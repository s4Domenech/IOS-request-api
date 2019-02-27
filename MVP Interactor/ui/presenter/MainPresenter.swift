//
//  MainPresenter.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 25/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

import UIKit

class MainPresenter: BasePresenter {
    
    var view: MainViewProtocol

    init(_ view: MainView) {
        self.view = view
    }
    
    override func initialize() {
        PokeController.instance.loadPokeApi(poke: "pikachu", success: {
            (poke) in
            
            DispatchQueue.main.async {
                self.loadPoke(poke)
                self.loadImages(poke)
            }

        }) {
            DispatchQueue.main.async {
                self.view.showMessage(message: Bundle.main.localizedString(forKey: "api_error", value: nil, table: "Default"))
            }
        }
    }
    
    public func loadPokeButtonPressed(poke: String) {
        if !poke.isEmpty {
            PokeController.instance.loadPokeApi(poke: poke, success: {
                poke in
                
                DispatchQueue.main.async {
                    self.loadPoke(poke)
                    self.loadImages(poke)
                }
            }, failure: {
                DispatchQueue.main.async {
                    self.view.showMessage(message: Bundle.main.localizedString(forKey: "api_error", value: nil, table: "Default"))
                }
            })
        } else {
            view.showMessage(message: "You have to write a pokemon name")
        }
    }
    
    private func loadPoke(_ poke: Poke) {
        var abilities: String = ""
        for ability in poke.abilities {
            if abilities.isEmpty {
                abilities = ability.name
            } else {
                abilities.append("\n" + ability.name)
            }
        }
        
        self.view.writeName(name: poke.name)
        self.view.writeAbilities(abilities: abilities)
    }
    
    private func loadImages(_ poke: Poke) {
        if !poke.sprite.spriteFemale.isEmpty {
            ImageController.instance.getImage(url: poke.sprite.spriteFemale, success: {
                image in
                DispatchQueue.main.async {
                    self.view.setImageFemale(image: image)
                }
            }, failure: {
                error in
                DispatchQueue.main.async {
                    self.view.showMessage(message: error)
                }
            })
        } else {
            view.clearImageSpriteFemale()
        }
        
        if !poke.sprite.spriteMale.isEmpty {
            ImageController.instance.getImage(url: poke.sprite.spriteMale, success: {
                image in
                DispatchQueue.main.async {
                    self.view.setImageMale(image: image)
                }
            }, failure: {
                error in
                DispatchQueue.main.async {
                    self.view.showMessage(message: error)
                }
            })
        } else {
            view.clearImageSpriteMale()
        }
        
        if (!poke.sprite.spriteFemaleShiny.isEmpty) {
            ImageController.instance.getImage(url: poke.sprite.spriteFemaleShiny, success: {
                image in
                DispatchQueue.main.async {
                    self.view.setImageShinyFemale(image: image)
                }
            }, failure: {
                error in
                DispatchQueue.main.async {
                    self.view.showMessage(message: error)
                }
            })
        } else {
            view.clearImageSpriteFemaleShiny()
        }
        
        if !poke.sprite.spriteMaleShiny.isEmpty {
            ImageController.instance.getImage(url: poke.sprite.spriteMaleShiny, success: {
                image in
                DispatchQueue.main.async {
                    self.view.setImageShinyMale(image: image)
                }
            }, failure: {
                error in
                DispatchQueue.main.async {
                    self.view.showMessage(message: error)
                }
            })
        } else {
            view.clearImageSpriteMaleShiny()
        }
    }
}

protocol MainViewProtocol {
    func writeName(name: String)
    func writeAbilities(abilities: String)
    func setImageFemale(image: UIImage)
    func setImageShinyFemale(image: UIImage)
    func setImageMale(image: UIImage)
    func setImageShinyMale(image: UIImage)
    func clearImageSpriteFemale()
    func clearImageSpriteMale()
    func clearImageSpriteFemaleShiny()
    func clearImageSpriteMaleShiny()
    func showMessage(message: String)
}
