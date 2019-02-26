//
//  UrlApi.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 25/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

import UIKit

class UrlApi {
    static private func getBaseUrl() -> String {
        return "https://pokeapi.co/api/v2/"
    }
    
    static func getPokemon(poke: String) -> String {
        return getBaseUrl() + "pokemon/" + poke
    }
}
