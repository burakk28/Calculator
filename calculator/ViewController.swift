//
//  ViewController.swift
//  calculator
//
//  Created by Burak Kara on 18.01.2023.
//

import UIKit

class ViewController: UIViewController {
  
  var number1: String = ""
  var number2:String = ""
  var numberArray = [String]()
  
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = ""
  }
  
  @IBAction func buttonEquals(_ sender: Any) {
    
    var sum = 0
    
    number2 = label.text!
    numberArray.append(number2)
  
    for number in numberArray {
        sum += Int(number)!
    }
    if true {
      label.text = "\(sum)"
      numberArray.removeAll()
      number1 = ""
    }
  }

  @IBAction func buttonSum(_ sender: Any) {
    number2 = label.text!
    numberArray.append(number2)
    number1 = ""
    label.text = " "
  }
  
  @IBAction func buttonReset(_ sender: Any) {
    number1 = ""
    number2 = ""
    numberArray = []
    label.text = ""
  }

  @IBAction func buttonStatus(_ sender: UIButton) {
    number1 += String(sender.tag)
    label.text = "\(number1)"
  }
}
  
  


