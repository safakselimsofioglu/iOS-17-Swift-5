//
//  ViewController.swift
//  FirstApp
//
//  Created by Şafak Selim Sofioğlu on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var imageView: UIImageView!

   override func viewDidLoad() {
      super.viewDidLoad()
   }

   @IBAction func changeClicked(_ sender: Any) {
      imageView.image = UIImage(named: "2")
   }
   
   @IBAction func changeClickedOld(_ sender: Any) {
      imageView.image = UIImage(named: "1")
   }
   
   
}

