//
//  Sprite.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 27/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//


struct Sprite {
    
    var spriteMale: String
    var spriteFemale: String
    var spriteFemaleShiny: String
    var spriteMaleShiny: String
    
    init(_ spriteMale: String, _ spriteFemale: String, _ spriteFemaleShiny: String, _ spriteMaleShiny: String) {
        self.spriteMale = spriteMale
        self.spriteFemale = spriteFemale
        self.spriteFemaleShiny = spriteFemaleShiny
        self.spriteMaleShiny = spriteMaleShiny
    }
}
