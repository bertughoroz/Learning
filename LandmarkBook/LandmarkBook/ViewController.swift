//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Bertuğ Horoz on 24.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImg = [UIImage]()
    var chosenLandmarkName = ""
    var chosenLandrmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("istanbul")
        landmarkNames.append("london")
        landmarkNames.append("moscow")
        landmarkNames.append("trabzon")
        
        landmarkImg.append(UIImage(named: "istanbul.jpeg")!)
        landmarkImg.append(UIImage(named: "london.jpeg")!)
        landmarkImg.append(UIImage(named: "moscow.jpeg")!)
        landmarkImg.append(UIImage(named: "trabzon.jpeg")!)
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return landmarkNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content =  cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandrmarkImage = landmarkImg[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
        let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandrmarkImage
        }
    }
        
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImg.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.middle)
        }
    }
}

