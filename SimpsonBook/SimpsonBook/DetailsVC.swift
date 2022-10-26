//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Bertuğ Horoz on 25.10.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedSimpson : simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
    }

}
