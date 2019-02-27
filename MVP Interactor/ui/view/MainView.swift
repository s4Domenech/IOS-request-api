//
//  ViewController.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 25/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

import UIKit

class MainView: BaseView, MainViewProtocol {

    var presenter: MainPresenter?

    @IBOutlet var lbPokeName: UILabel!
    @IBOutlet var lbPokeAbilities: UILabel!
    @IBOutlet var ivFrontMale: UIImageView!
    @IBOutlet var ivShinyMale: UIImageView!
    @IBOutlet var ivFrontFemale: UIImageView!
    @IBOutlet var ivShinyFemale: UIImageView!
    @IBOutlet var tfSearch: UITextField!
    
    @IBAction func loadPokeButton(_ sender: UIButton) {
        presenter?.loadPokeButtonPressed(poke: (tfSearch.text?.lowercased())!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = MainPresenter(self)
        presenter?.initialize()
    }
    
    func writeName(name: String) {
        lbPokeName.text = name
    }
    
    func writeAbilities(abilities: String) {
        lbPokeAbilities.text = abilities
    }
    
    func setImageFemale(image: UIImage) {
        ivFrontFemale.image = image
    }
    
    func setImageShinyFemale(image: UIImage) {
        ivShinyFemale.image = image
    }
    
    func setImageMale(image: UIImage) {
        ivFrontMale.image = image
    }
    
    func setImageShinyMale(image: UIImage) {
        ivShinyMale.image = image
    }
    
    func clearImageSpriteMale() {
        ivFrontMale.image = nil
    }
    
    func clearImageSpriteFemale() {
        ivFrontFemale.image = nil
    }
    
    func clearImageSpriteMaleShiny() {
        ivShinyMale.image = nil
    }
    
    func clearImageSpriteFemaleShiny() {
        ivShinyFemale.image = nil
    }
    
    func showMessage(message: String) {
        print(message)
    }
}
