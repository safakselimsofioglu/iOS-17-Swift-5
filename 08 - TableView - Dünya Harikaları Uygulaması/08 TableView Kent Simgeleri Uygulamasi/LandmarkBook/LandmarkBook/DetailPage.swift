//
//  DetailPage.swift
//  LandmarkBook
//
//  Created by Şafak Selim Sofioğlu on 21.06.2024.
//

import UIKit

class DetailPage: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var landmark = Landmarks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "\(landmark.image!)")
        
        landmarkLabel.text = landmark.name!
        
    }
    

}
