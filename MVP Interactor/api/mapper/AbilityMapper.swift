//
//  AbilityMapper.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 19/03/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

class AbilityMapper {
    static func map(dictionary: [String:Any]) -> Ability {
        let name = dictionary["name"] as! String
        return Ability(name)
    }
}
