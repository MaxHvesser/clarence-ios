//
//  HomeViewModel.swift
//  swap
//
//  Created by Maximilian Hvesser-Lewis on 29/03/2020.
//  Copyright © 2020 Hvesser. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class HomeViewModel: ObservableObject {

    var cancellationToken: Set<AnyCancellable?> = []
    var fetchedRates: Set<Rate> = []
    @Published var ratesFetched: Bool = false

    init() {
        fetchAndStoreCurrencyRates()
    }

}

extension HomeViewModel {

    private func fetchAndStoreCurrencyRates() {
        Currency.currencies.forEach { currency in
            getLatestRateForBase(base: currency.name)
        }
    }

    private func getLatestRateForBase(base: String) {
        cancellationToken.insert(ExchangeRatesService.request(.latest, parameters: ["base": base])
                .mapError({ (error) -> Error in
                    print(error)
                    return error
                })
                .sink(receiveCompletion: { _ in },
                        receiveValue: { rate in
                            self.fetchedRates.insert(rate)
                            print("Returned rate: \(rate)")

                            if self.fetchedRates.count >= Currency.currencies.count {
                                self.ratesFetched = true
                            }
                        }))
    }

}
