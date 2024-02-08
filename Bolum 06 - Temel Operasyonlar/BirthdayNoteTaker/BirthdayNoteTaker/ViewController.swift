//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Şafak Selim Sofioğlu on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var nameTextfield: UITextField!
   @IBOutlet weak var birthdayTextfield: UITextField!
   @IBOutlet weak var nameLabel: UILabel!
   @IBOutlet weak var birthdayLabel: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      let storedName = UserDefaults.standard.object(forKey: "name")
      let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
      
      // Casting - as? vs. as! force casting
      if let myName = storedName as? String {
         nameLabel.text = "Name: \(myName)"
      }
      
      if let myBirthday = storedBirthday as? String {
         birthdayLabel.text = "Birthday: \(myBirthday)"
      }
   }

   @IBAction func saveButton(_ sender: Any) {
      UserDefaults.standard.set(nameTextfield.text!, forKey: "name")
      UserDefaults.standard.set(birthdayTextfield.text!, forKey: "birthday")
      
      nameLabel.text = "Name: \(nameTextfield.text!)"
      birthdayLabel.text = "Birthday: \(birthdayTextfield.text!)"
   }
   
   
   @IBAction func deleteButton(_ sender: Any) {
      let storedName = UserDefaults.standard.object(forKey: "name")
      let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
      
      if (storedName as? String) != nil {
         UserDefaults.standard.removeObject(forKey: "name")
         nameLabel.text = "Name: "
      }
      
      if (storedBirthday as? String) != nil {
         UserDefaults.standard.removeObject(forKey: "birthday")
         birthdayLabel.text = "Birthday: "
      }
   }
   
}

