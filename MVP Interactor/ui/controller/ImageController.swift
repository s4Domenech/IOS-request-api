//
//  ImageController.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 27/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

import UIKit

class ImageController {
    
    static let instance = ImageController()
    
    var imageApi = ImageApi()
    
    func getImage(url: String, success: @escaping(_ image: UIImage) -> Void, failure: @escaping(_ message: String) -> Void) {
        imageApi.getImage(url: url, success: success, failure: failure)
    }
}
