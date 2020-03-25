//
//  HomeView.swift
//  swap
//
//  Created by Maximilian Hvesser-Lewis on 23/03/2020.
//  Copyright © 2020 Hvesser. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var key: Int = 0
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("\(self.key)")
                Spacer()
                HStack {
                    Spacer()
                    Text("Placeholder")
                    Spacer()
                }
                Keypad(keyPressed: self.$key)
                    .background(Color.white)
                    .cornerRadius(ViewConstants.large)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height / ViewConstants.keypadHeightRatio
                    )
            }
            .background(Color.background)
            .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
