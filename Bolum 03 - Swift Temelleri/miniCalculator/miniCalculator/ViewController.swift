//
//  ViewController.swift
//  miniCalculator
//
//  Created by Şafak Selim Sofioğlu on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var firstNumber: UITextField!
   @IBOutlet weak var secondNumber: UITextField!
   @IBOutlet weak var result: UILabel!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }

   // MARK: -- Sum Button
   @IBAction func add(_ sender: Any) {
      
      if let firstText = Int(firstNumber.text!) {
         if let secondText = Int(secondNumber.text!) {
            
            let sum = firstText + secondText
            result.text = String(sum)
            
         }
      }
   }
   
   // MARK: -- Minus Button
   @IBAction func subtraction(_ sender: Any) {
      if let firstText = Int(firstNumber.text!) {
         if let secondText = Int(secondNumber.text!) {
            
            let sum = firstText - secondText
            result.text = String(sum)
            
         }
      }
   }
   
   // MARK: -- Divide Button
   @IBAction func division(_ sender: Any) {
      if let firstText = Int(firstNumber.text!) {
         if let secondText = Int(secondNumber.text!) {
            
            let sum = firstText / secondText
            result.text = String(sum)
            
         }
      }
   }
   
   // MARK: -- Multiplication Button
   @IBAction func multiplication(_ sender: Any) {
      if let firstText = Int(firstNumber.text!) {
         if let secondText = Int(secondNumber.text!) {
            
            let sum = firstText * secondText
            result.text = String(sum)
            
         }
      }
   }
   
   
}

