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

    @IBOutlet var lbPoke: UILabel!
    @IBAction func loadPokeButton(_ sender: UIButton) {
        presenter?.loadPokeButtonPressed()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = MainPresenter(self)
        presenter?.initialize()
    }
    
    func fillDataPoke(dataPoke: String) {
        lbPoke.text = dataPoke
    }
    
    func showMessage(message: String) {
        print(message)
    }
}
