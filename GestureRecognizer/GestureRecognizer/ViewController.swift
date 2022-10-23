//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Bertuğ Horoz on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var is1 = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePic() {
        if is1 == true {
            imageView.image = UIImage(named: "2")
            myLabel.text = "Iphone 14 Pro"
            is1 = false
        }
        else {
            imageView.image = UIImage(named: "1")
            myLabel.text = "Iphone 6"
            is1 = true
        }
    }

}

