//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // 7 9 7 4
    
    @IBOutlet weak var cardOneLabel: UILabel!
    @IBOutlet weak var cardTwoLabel: UILabel!
    @IBOutlet weak var cardThreeLabel: UILabel!
    @IBOutlet weak var cardFourLabel: UILabel!
    
   
    @IBAction func nextTapped(_ sender: UIButton) {
        
        // 48498 % 1000 = ?
        let cardOneNumber = arc4random() % 10
        let cardTwoNumber = arc4random() % 10
        let cardThreeNumber = arc4random() % 10
        let cardFourNumber = arc4random() % 10
        
        cardOneLabel.text = "\(cardOneNumber)"
        cardTwoLabel.text = "\(cardTwoNumber)"
        cardThreeLabel.text = "\(cardThreeNumber)"
        cardFourLabel.text = "\(cardFourNumber)"
    }
    
}




