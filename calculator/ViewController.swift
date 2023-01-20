//
//  ViewController.swift
//  calculator
//
//  Created by Burak Kara on 18.01.2023.
//

import UIKit

class ViewController: UIViewController {
  
  var sayi: String = ""
  var sayi2:String = ""
  var sayiDizi = [String]()
  

  @IBOutlet weak var labelSayi: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    labelSayi.text = ""
    
  }
  
  @IBAction func buttonEsittir(_ sender: Any) {
    
    var toplam = 0
    
    sayi2 = labelSayi.text!
    sayiDizi.append(sayi2)
  
    for number in sayiDizi {
        toplam += Int(number)!
    }
    if true {
      labelSayi.text = "\(toplam)"
      sayiDizi.removeAll()
    }
  }
  
  @IBAction func buttonTopla(_ sender: Any) {
    sayi2 = labelSayi.text!
    sayiDizi.append(sayi2)
    sayi = ""
    labelSayi.text = " "
  }
  
  @IBAction func buttonSifirla(_ sender: Any) {
     sayi = ""
     sayi2 = ""
     sayiDizi = []
     labelSayi.text = ""
  }
  
  @IBAction func buttonDurum(_ sender: UIButton) {
      sayi += String(sender.tag)
      labelSayi.text = "\(sayi)"
    }
 }
  
  


