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
    
    init(_ dictionarySprites: [String: Any]) {
        if let spriteFrontFemale = dictionarySprites["front_female"] as? String {
            self.spriteFemale = spriteFrontFemale
        } else { self.spriteFemale = "" }
        
        if let spriteFrontMale = dictionarySprites["front_default"] as? String {
            self.spriteMale = spriteFrontMale
        } else { self.spriteMale = "" }
        
        if let spriteFrontFemaleShiny = dictionarySprites["front_shiny_female"] as? String {
            self.spriteFemaleShiny = spriteFrontFemaleShiny
        } else { self.spriteFemaleShiny = "" }
        
        if let spriteFrontMaleShiny = dictionarySprites["front_shiny"] as? String {
            self.spriteMaleShiny = spriteFrontMaleShiny
        } else { self.spriteMaleShiny = "" }
    }
}
