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
        //todo
    }
    
    public func loadPokeButtonPressed() {
        PokeController.instance.loadPokeApi(success: {
            poke in
            
            var data: String
            data = poke.name
            for ability in poke.abilities {
                data.append("\n" + ability.name)
            }
            DispatchQueue.main.async {
                self.view.fillDataPoke(dataPoke: data)
            }
        }, failure: {
            DispatchQueue.main.async {
                self.view.showMessage(message: Bundle.main.localizedString(forKey: "api_error", value: nil, table: "Default"))
            }
        })
    }
}

protocol MainViewProtocol {
    func fillDataPoke(dataPoke: String)
    func showMessage(message: String)
}
