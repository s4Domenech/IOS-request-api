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
    var sprite: Sprite
    
    init(_ name: String, _ abilities: [Ability], _ sprite: Sprite) {
        self.name = name
        self.abilities = abilities
        self.sprite = sprite
    }
}
