//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var cardOneLabel: UILabel!
    @IBOutlet weak var cardTwoLabel: UILabel!
    @IBOutlet weak var cardThreeLabel: UILabel!
    @IBOutlet weak var cardFourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello")
        cardOneLabel.text = "10"
        
    }
    
    @IBAction func giveNextHand(_ sender: Any) {
        print("Hello1")
        let cardOne = arc4random() % 10 + 1
        let cardTwo = arc4random() % 10 + 1
        let cardThree = arc4random() % 10 + 1
        let cardFour = arc4random() % 10 + 1
        cardOneLabel.text = "\(cardOne)"
        cardTwoLabel.text = "\(cardTwo)"
        cardThreeLabel.text = "\(cardThree)"
        cardFourLabel.text = "\(cardFour)"
        
    }
    
}




