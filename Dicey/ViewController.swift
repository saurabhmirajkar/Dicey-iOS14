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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstDiceImageView.alpha = 0.5
        secondDiceImageView.alpha = 0.8
        
    }


}

