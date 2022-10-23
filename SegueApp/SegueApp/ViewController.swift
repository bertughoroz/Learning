//
//  ViewController.swift
//  SegueApp
//
//  Created by Bertuğ Horoz on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //LifeCycle
        print("viewDid function called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear funciton called")
        nameText.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear funciton called")
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC" , sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            // as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

