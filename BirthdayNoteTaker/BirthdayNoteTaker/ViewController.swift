//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Bertuğ Horoz on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var birthdayField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad(  ) {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting --> as? vs as!   as?olan yapabilirsen. as! olan kesin yap.
        
        if let newName = storedName as? String{
            nameLabel.text = newName
        }
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = newBirthday
        }
    }


    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.setValue(nameField.text, forKey: "name")
        UserDefaults.standard.setValue(birthdayField.text, forKey: "birthday")
        
        nameLabel.text = nameField.text
        birthdayLabel.text = birthdayField.text
            }
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name : "
        }
        if storedBirthday is String{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday :"
        }
    }
}
