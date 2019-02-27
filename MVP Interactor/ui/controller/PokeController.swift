//
//  PokeController.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 25/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

class PokeController {
    
    static let instance = PokeController()
    
    var pokeApi = PokeApi()

    func loadPokeApi(poke: String, success: @escaping(Poke) -> Void, failure: @escaping() -> Void) {
        pokeApi.getPoke(poke: poke, success: success, failure: failure)
    }
}
