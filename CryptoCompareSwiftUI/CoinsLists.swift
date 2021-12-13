//
//  CoinsList.swift
//  CryptoCompareSwiftUI
//
//  Created by Vahtee Boo on 13.12.2021.
//

import SwiftUI

struct CoinsLists: View {
    var body: some View {
        
        VStack {
            Button {
                print("Swift hello!")
            } label: {
                Text("Update")
            }

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            }
        }

    }
}

struct CoinsList_Previews: PreviewProvider {
    static var previews: some View {
        CoinsLists()
    }
}
