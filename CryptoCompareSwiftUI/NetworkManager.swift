//
//  NetworkManager.swift
//  CryptoCompareSwiftUI
//
//  Created by Vahtee Boo on 13.12.2021.
//

import Foundation
import UIKit

struct NetworkManager {
    
    private var coins = [Coin]()
    
    let urlString = Url.coinsList.rawValue
    
//    private func one() {
//        self.loadJson(fromURLString: urlString) { (result) in
//            switch result {
//            case .success(let data):
//                self.parse(jsonData: data)
//            case .failure(let error):
//                print(error)
//            }
//        }
//
//    }
    
    
    private func two() {
        let coin = coins[0]
        let url = URL(string: coin.imageURL)!
        let image: UIImage
        
        if let data = try? Data(contentsOf: url) {
            // Create Image and Update Image View
            image = UIImage(data: data) ?? UIImage(systemName: "")!
        }
    }
    
    
    mutating private func parse(jsonData: Data) {
        do {
            let decodeData = try JSONDecoder().decode(CoinsList.self, from: jsonData)
            
            for (i, y) in decodeData.data.enumerated() {
                let imageUrl = y.value.imageURL ?? "ZZZ"
                let coin = Coin.init(id: i,
                                     url: y.value.url,
                                     imageURL: Url.base.rawValue + imageUrl,
                                     name: y.value.name,
                                     symbol: y.value.symbol,
                                     coinName: y.value.coinName,
                                     fullName: y.value.fullName)
                //                print(coin)
                coins.append(coin)
                //                for (i, y) in y.enumerated() {
                //                    print(y)
                //                }
                
                //                print("Key is \(i), Value is \(y)")
                //                print("y.key is \(y.key), y.value is \(y.value)")
                //                y.value.id
            }
            //            DispatchQueue.main.async {
            //                self.tableView.reloadData()
            //            }
            //            print(coins)
        } catch {
            print("decode error")
        }
    }
    
    private func loadJson(fromURLString urlString: String,
                          completion: @escaping (Result<Data, Error>) -> Void) {
        if let url = URL(string: urlString) {
            let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(.failure(error))
                }
                
                if let data = data {
                    completion(.success(data))
                }
            }
            
            urlSession.resume()
        }
    }
}
