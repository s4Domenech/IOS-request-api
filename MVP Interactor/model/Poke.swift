//
//  Poke.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 26/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

struct Poke {
    var name: String
    var abilities: [Ability]
    
    init(dictionary: [String: Any]) {
        self.name = (dictionary["name"] as? String)!
        
        var abilitiesToAdd: [Ability] = []
        if let abilities = dictionary["abilities"] as? [[String: Any]] {
            for ability in abilities {
                if let abilityObject = ability["ability"] as? [String: Any] {
                    abilitiesToAdd.append(Ability(name: (abilityObject["name"] as? String)!))
                }
            }
        }
        self.abilities = abilitiesToAdd
    }
}
