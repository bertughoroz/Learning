//
//  ViewController.swift
//  AlertProject
//
//  Created by Bertuğ Horoz on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        
        /*let userAlert = UIAlertController(title: "Error!", message: "Username Not Found", preferredStyle: UIAlertController.Style.alert)
        let passwordAlert1 = UIAlertController(title: "Error!", message: "Passwords Do Not Match", preferredStyle: UIAlertController.Style.alert)
        let passwordAlert2 = UIAlertController(title: "Error!", message: "Password Is Empty", preferredStyle: UIAlertController.Style.alert)
        let succesAlert = UIAlertController(title: "Succes", message: "User Signed Up!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in }
        */
        
        if userNameText.text == ""{
            makeAlert(titleInput: "Error!" , messageInput: "Username Is Empty")
        }
        else if (passwordText.text) != (passwordText2.text) {
            makeAlert(titleInput: "Error!" , messageInput: "Passwords Do Not Match")
        }
        else if passwordText.text == "" || passwordText2.text == "" {
            makeAlert(titleInput: "Error!" , messageInput: "Password Empty")
        }
        else {
            makeAlert(titleInput: "Succes!" , messageInput: "You Signed In")
        }
    }
        
    
    func makeAlert(titleInput : String , messageInput : String){
        let userAlert = UIAlertController(title: titleInput , message: messageInput , preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in }
        userAlert.addAction(okButton)
        self.present(userAlert, animated: true, completion: nil)
    }
}

