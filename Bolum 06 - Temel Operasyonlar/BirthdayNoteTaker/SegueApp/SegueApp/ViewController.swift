//
//  ViewController.swift
//  SegueApp
//
//  Created by Şafak Selim Sofioğlu on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var myLabel: UILabel!
   @IBOutlet weak var nameTextfield: UITextField!
   
   var username = ""
   
   // Görünüm yüklendikten sonra ilk kez çağrılır.
   // Görünümle ilgili ilklendirme işlemleri için kullanılır.
   // 1 kez çağrılır.
   override func viewDidLoad() {
      super.viewDidLoad()
      print("viewDidLoad function called.")
   }
   
   // Görünüm ekrandan kaldırıldıktan sonra yapılması gereken işlemler için kullanılır.
   // Kaynakların serbest bırakılması, verilerin kaydedilmesi vb.
   override func viewDidDisappear(_ animated: Bool) {
      print("viewDidDisappear function called")
   }
   
   // Görünüm ekrandan kaldırılmadan önce yapılması gereken işlemler için kullanılır.
   // Animasyonları durdurmak, verileri kaydetmek vb.
   override func viewWillDisappear(_ animated: Bool) {
      print("viewWillDisappear function called")
   }
   
   // Görünüm ekrana gösterilmeden önce yapılması gereken işlemler için kullanılır.
   // Animasyon başlatmak, verileri güncellemek vb.
   override func viewWillAppear(_ animated: Bool) {
      print("viewWillAppear function called")
   }
   
   // Görünüm ekrana gösterildikten sonra yapılması gereken işlemler için kullanılır.
   // Kullanıcı etkileşimi ile ilgili işlemler için kullanılır.
   override func viewDidAppear(_ animated: Bool) {
      print("viewDidAppear function called")
   }

   @IBAction func nextButton(_ sender: Any) {
      username = nameTextfield.text!
      performSegue(withIdentifier: "toSecondVC", sender: nil)
      
   }
   
   // Segue olmadan hemen önce yapılacak işlemleri burada yazabiliriz.
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "toSecondVC" {
         // as -- casting
         let destinationVC = segue.destination as! SecondViewController
         destinationVC.myName = username
      }
   }
   
}

