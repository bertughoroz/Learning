//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Bertuğ Horoz on 25.10.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    var mySimpsons = [simpsons]()
    var chosenSimpson : simpsons?
    
    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let homer = simpsons(simpsonName: "homer", simsponJob: "nuclear safety", simpsonImage: UIImage(named: "homer")!)
        let bart = simpsons(simpsonName: "bart", simsponJob: "student", simpsonImage: UIImage(named: "bart")!)
        let lisa = simpsons(simpsonName: "lisa", simsponJob: "student", simpsonImage: UIImage(named: "lisa")!)
        let burns = simpsons(simpsonName: "burns", simsponJob: "police", simpsonImage: UIImage(named: "burns")!)
        let marge = simpsons(simpsonName: "marge", simsponJob: "teacher", simpsonImage: UIImage(named: "marge")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(burns)
        mySimpsons.append(marge)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
}

