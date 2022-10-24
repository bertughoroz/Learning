//
//  ViewController.swift
//  CatchKenny
//
//  Created by Bertuğ Horoz on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!

    var score = 0
    var timer = Timer()
    var counter = 0
    var kennyArray = [UIImageView]()
    var hideTimer = Timer()
    var highScore = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
 
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
        scoreLabel.text = "Score : \(score)"
        
        //highscore check
        
        let storedHighscore = UserDefaults.standard.object(forKey: "highscore")
        if storedHighscore == nil {
            highScore = 0
            highLabel.text = "Highscore : \(highScore)"
        }
        
        if let newScore = storedHighscore as? Int {
            highScore = newScore
            highLabel.text = "Highscore : \(highScore)"
        }
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        kenny1.addGestureRecognizer(recognizer1)
        kenny2.addGestureRecognizer(recognizer2)
        kenny3.addGestureRecognizer(recognizer3)
        kenny4.addGestureRecognizer(recognizer4)
        kenny5.addGestureRecognizer(recognizer5)
        kenny6.addGestureRecognizer(recognizer6)
        kenny7.addGestureRecognizer(recognizer7)
        kenny8.addGestureRecognizer(recognizer8)
        kenny9.addGestureRecognizer(recognizer9)
        
        kennyArray = [kenny1,kenny2,kenny3,kenny4,kenny5,kenny6,kenny7,kenny8,kenny9]
        
        counter = 10
        timeLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5 , target: self , selector: #selector(hideKenny), userInfo: nil, repeats: true)
        hideKenny()
        
    }
    
    @objc func hideKenny(){
        
        for kenny in kennyArray {
            
            kenny.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(kennyArray.count - 1)))
        kennyArray[random].isHidden = false
    }
    
    @objc func increaseScore () {
        score += 1
        scoreLabel.text = "Score : \(score)"
    }
    
    @objc func countdown () {
        counter -= 1
        timeLabel.text = String(counter)
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            for kenny in kennyArray {
                kenny.isHidden = true
            }
            
            //highscore
            if self.score > self.highScore{
                self.highScore = self.score
                highLabel.text = "Highscore : \(self.highScore)"
                UserDefaults.standard.setValue(self.highScore, forKey: "highscore")
            }
            
            
            let alert = UIAlertController(title: "Time Is Up", message: "Do You Want To Play Again", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel , handler: nil)
            let replay = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                self.score = 0
                self.scoreLabel.text = "Score : \(self.score)"
                self.counter = 10
                self.timeLabel.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countdown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5 , target: self , selector: #selector(self.hideKenny), userInfo: nil, repeats: true)
            }
            
            alert.addAction(okButton)
            alert.addAction(replay)
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
}

