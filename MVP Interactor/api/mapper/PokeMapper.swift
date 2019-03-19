//
//  PokeMapper.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 19/03/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

class PokeMapper {
    static func map(dictionary: [String: Any]) -> Poke {
        let name = (dictionary["name"] as? String)!
        
        var abilitiesToAdd: [Ability] = []
        if let abilities = dictionary["abilities"] as? [[String: Any]] {
            for ability in abilities {
                abilitiesToAdd.append(AbilityMapper.map(dictionary: ability["ability"] as! [String: Any]))
            }
        }
        let abilities = abilitiesToAdd
        let sprite = SpriteMapper.map(dictionary: dictionary["sprites"] as! [String: Any])
        
        return Poke(name, abilities, sprite)
    }
}
