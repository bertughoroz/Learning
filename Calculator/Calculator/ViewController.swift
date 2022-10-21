//
//  ViewController.swift
//  Calculator
//
//  Created by Bertuğ Horoz on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firsText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Int(firsText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firsText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func multipleClicked(_ sender: Any) {
        if let firstNumber = Int(firsText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firsText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
}

