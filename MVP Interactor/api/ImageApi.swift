//
//  ImageApi.swift
//  MVP Interactor
//
//  Created by Sylvia Domenech on 27/02/2019.
//  Copyright © 2019 Sylvia Callejas. All rights reserved.
//

import UIKit
import Foundation

class ImageApi {

    func getImage(url: String, success: @escaping(_ image: UIImage) -> Void, failure: @escaping(_ message: String) -> Void) {
        let task = URLSession.shared.dataTask(with: URLRequest(url: URL(string: url)!)) {
            (data, response, err) in
            if let e = err {
                failure(e.localizedDescription)
            }
            if let imageData = data {
                let image = UIImage(data: imageData)
                success(image!)
            } else {
                failure("Couldn't get image from data")
            }
            
        }
        task.resume()
    }
}
