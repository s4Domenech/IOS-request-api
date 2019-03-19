//
//  SpriteMapper.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 19/03/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

class SpriteMapper {
    static func map(dictionary: [String: Any]) -> Sprite {
        var spriteFemale: String
        var spriteMale: String
        var spriteFemaleShiny: String
        var spriteMaleShiny: String
        
        if let spriteFrontFemale = dictionary["front_female"] as? String {
            spriteFemale = spriteFrontFemale
        } else { spriteFemale = "" }
        
        if let spriteFrontMale = dictionary["front_default"] as? String {
            spriteMale = spriteFrontMale
        } else { spriteMale = "" }
        
        if let spriteFrontFemaleShiny = dictionary["front_shiny_female"] as? String {
            spriteFemaleShiny = spriteFrontFemaleShiny
        } else { spriteFemaleShiny = "" }
        
        if let spriteFrontMaleShiny = dictionary["front_shiny"] as? String {
            spriteMaleShiny = spriteFrontMaleShiny
        } else { spriteMaleShiny = "" }
        
        return Sprite(spriteMale, spriteFemale, spriteFemaleShiny, spriteMaleShiny)
    }
}
