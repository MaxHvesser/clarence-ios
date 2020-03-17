//
//  CurrencySwap.swift
//  swap
//
//  Created by Maximilian Hvesser-Lewis on 17/03/2020.
//  Copyright © 2020 Hvesser. All rights reserved.
//

import SwiftUI

struct CurrencySwap: View {
    var body: some View {
        HStack {
            // MARK: Primary Currency Button
            Button(action: {}) {
                Text("USD 🇺🇸")
                    .foregroundColor(.white)
                    .padding()
            }
            .background(Color.colorAccentPrimary)
            .cornerRadius(32)
            
            // MARK: Swap Button
            Button(action: {}) {
                Text("< >")
                    .foregroundColor(.white)
                    .padding()
            }
            .background(Color.backgroundAccent)
            .cornerRadius(32)
            
            // MARK: Secondary Currency Button
            Button(action: {}) {
                Text("GBP 🇬🇧")
                    .foregroundColor(.white)
                    .padding()
            }
            .background(Color.colorAccentSecondary)
            .cornerRadius(32)
            
        }
    }
}

struct CurrencySwap_Previews: PreviewProvider {
    static var previews: some View {
        CurrencySwap()
            .background(Color.backgroundPrimary)
    }
}
