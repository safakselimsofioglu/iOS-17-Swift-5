//
//  ViewController.swift
//  AlertProject
//
//  Created by Şafak Selim Sofioğlu on 9.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var usernameText: UITextField!
   @IBOutlet weak var passwordText: UITextField!
   @IBOutlet weak var password2Text: UITextField!
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
   @IBAction func signupClicked(_ sender: Any) {
      
      if usernameText.text == "" {
         makeAlert(titleInput: "Error!", messageInput: "Username not found")
      } else if passwordText.text == "" {
         makeAlert(titleInput: "Error!", messageInput: "Password not found")
      } else if password2Text.text != passwordText.text {
         makeAlert(titleInput: "Error!", messageInput: "Passwords do not match")
      } else {
         makeAlert(titleInput: "Success", messageInput: "User OK")
      }
      
   }
   
   func makeAlert(titleInput: String, messageInput: String) {
      let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
      let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
         print("Button clicked")
      }
      alert.addAction(okButton)
      self.present(alert, animated: true, completion: nil)
   }
   
}

