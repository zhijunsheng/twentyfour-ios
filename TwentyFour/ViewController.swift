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
    
    @IBOutlet weak var answerBox: UITextField!
    
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
        
        print(answerBox.text)
        
        answerBox.text = ""
    }

    
}

/*
 
 infix expression
 3 + 5
 
 postfix expression
 
 3 5 +
 
 7 - 2: 7 2 -
 
 3 + 5 + 6:
 3 5 6 + +
 3 11 +
 14
 
 3 + 5 * 6:
 3 5 6 * +
 3 30 +
 33
 
 (8 - 5 + 1) * 6:
 8 5 - 1 + 6 *
 3 1 + 6 *
 4 6 *
 24
 
 3 + 1: 3 1 +
 
 
 4 * 6:
 
 (7 - ((((3 - 1))) * 8))))):
7 3 - 1 - 8 *
 4 1 - 8 *
 3 8 *
 24
 (9 - 10 + 5) * 6
 9 10 - 5 + 6 *
 -1 5 + 6 *
 4 6 *
 24
 
 
 */




