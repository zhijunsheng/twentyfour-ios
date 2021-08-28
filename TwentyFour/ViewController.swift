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
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("----------------------")
    }
    
    @IBAction func deal(_ sender: Any) {
   
        let cardOneNum = arc4random() % 10 + 1
        cardOneLabel.text = "\(cardOneNum)"
        
        let cardTwoNum = arc4random() % 10 + 1
        cardTwoLabel.text = "\(cardTwoNum)"
        
        let cardThreeNum = arc4random() % 10 + 1
        cardThreeLabel.text = "\(cardThreeNum)"
        
        let cardFourNum = arc4random() % 10 + 1
        cardFourLabel.text = "\(cardFourNum)"
        
        answerTextField.text = ""
        
    }
    
    @IBAction func save(_ sender: Any) {
        var fourCards = ""
        
        fourCards += "       \(cardOneLabel.text!)"
        fourCards += "       \(cardTwoLabel.text!)"
        fourCards += "       \(cardThreeLabel.text!)"
        fourCards += "       \(cardFourLabel.text!)"
        cardLabel.text = fourCards
    }
}

/*
 
 infix expression:
 
 2 + 3 : 2 3 +
 5 - 1 : 5 1 -
 2 + 3 - 1 : 2 3 + 1 -
 
 2 - 3 : 2 3 -
 2 - (4 - 1) : 2 4 1 - -
 
 2 + 3 * 4 : 2 3 4 * +
 6 + 4 : 6 4 +
 2 * 3 + 4 : 2 3 * 4 +
 
 2 3 4 + * : 2 7 *
 
 2 3 1 + - : 2 - (3 + 1)

 
 10 * (4 / 2) + 4 : 10 4 2 / * 4 +
 10 + 10 + 9 - 5 =  10 10 + 9 + 5 -
 postfix expression:
 
 2 3 +
 2 3 +
 
 
 
 
 */




