//
//  ContentView.swift
//  CryptoCompareSwiftUI
//
//  Created by Vahtee Boo on 13.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink("Coins List") {
                    CoinsLists()
                }
                Text("Some content will be there")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
