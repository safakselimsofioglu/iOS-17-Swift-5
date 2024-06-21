//
//  Landmarks.swift
//  LandmarkBook
//
//  Created by Şafak Selim Sofioğlu on 21.06.2024.
//

import Foundation

class Landmarks {
    var name:String?
    var image:String?
    
    init() {
        
    }
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
