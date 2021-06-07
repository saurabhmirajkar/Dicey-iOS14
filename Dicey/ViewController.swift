//
//  ViewController.swift
//  Dicey
//
//  Created by Saurabh Mirajkar on 08/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstDiceImageView.alpha = 0.8
        secondDiceImageView.alpha = 0.8
        
    }

    @IBAction func letsRollButton(_ sender: UIButton) {
        
        let diceArray: [String] = ["dice-1", "dice-2", "dice-3", "dice-4", "dice-5", "dice-6"]
        
        let randomNumberOne = Int.random(in: 0..<diceArray.count)
        firstDiceImageView.image = UIImage(named: diceArray[randomNumberOne])
        
        let randomNumberTwo = Int.random(in: 0..<diceArray.count)
        secondDiceImageView.image = UIImage(named: diceArray[randomNumberTwo])
        
        if randomNumberOne == randomNumberTwo {
            
            score += 1
            self.scoreLabel.text = "\(score)"
            
            // bingo
            let alert = UIAlertController(title: "🎉BINGO🎉", message: "You have a won $1M🍾", preferredStyle: .alert)
            let claim = UIAlertAction(title: "CLAIM", style: .default, handler: nil)
            alert.addAction(claim)
            present(alert, animated: true, completion: nil)
        }
        
        generatePassword()
        
    }
    
    func generatePassword() {
        
        let alphabets = [
            "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
        ]
        
        var counter: Int = 0
        var password: String = ""
        
        while counter < 6 {
            counter += 1
            let character = alphabets.randomElement()
            password += character!
        }
        
        print("Password: \(password)")
        
    }
    
}

