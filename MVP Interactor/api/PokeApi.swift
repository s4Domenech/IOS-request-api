//
//  PokeApi.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 25/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

import UIKit
import Foundation

class PokeApi {
    
    func getPoke(success: @escaping(Poke) -> Void, failure: @escaping() -> Void) {
        let urlString = UrlApi.getPokemon(poke: "ditto")
        let requestUrl = URL(string:urlString)
        var request = URLRequest(url:requestUrl!)
        request.httpMethod = "GET"
        //to post a value
        //request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //request.addValue("application/json", forHTTPHeaderField: "Accept")
        //let params = ["name":"syl"] as Dictionary<String, String>
        //request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: [])
                if let dictionary = jsonResponse as? [String: Any] {
                    let poke = Poke(dictionary: dictionary)
                    success(poke)
                }
            } catch let parsingError {
                print("Error", parsingError)
            }
        }
        task.resume()
    }
}
