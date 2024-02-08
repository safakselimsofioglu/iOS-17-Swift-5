//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Şafak Selim Sofioğlu on 8.02.2024.
//

import UIKit

class SecondViewController: UIViewController {
   
   @IBOutlet weak var myLabelSecond: UILabel!
   @IBOutlet weak var nameLabel: UILabel!
   
   var myName = ""
   
   override func viewDidLoad() {
      super.viewDidLoad()
      nameLabel.text = myName
   }
   
}
