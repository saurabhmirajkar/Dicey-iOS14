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
    
    let diceArray: [String] = ["dice-1", "dice-2", "dice-3", "dice-4", "dice-5", "dice-6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstDiceImageView.alpha = 0.8
        secondDiceImageView.alpha = 0.8
        
    }

    @IBAction func letsRollButton(_ sender: UIButton) {
        let randomNumberOne = Int.random(in: 0..<diceArray.count)
        firstDiceImageView.image = UIImage(named: diceArray[randomNumberOne])
        
        let randomNumberTwo = Int.random(in: 0..<diceArray.count)
        secondDiceImageView.image = UIImage(named: diceArray[randomNumberTwo])
        
        if randomNumberOne == randomNumberTwo {
            // bingo
            let alert = UIAlertController(title: "🎉BINGO🎉", message: "You have a won $1M🍾", preferredStyle: .alert)
            let claim = UIAlertAction(title: "CLAIM", style: .default, handler: nil)
            alert.addAction(claim)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
}

