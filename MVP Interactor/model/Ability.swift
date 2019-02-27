//
//  Ability.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 26/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

struct Ability {
    var name: String
    
    init(_ dictionaryAbility: [String: Any]) {
        self.name = dictionaryAbility["name"] as! String
    }
}
