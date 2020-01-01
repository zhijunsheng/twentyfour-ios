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
    
    @IBOutlet weak var card2OneLabel: UILabel!
    @IBOutlet weak var card2TwoLabel: UILabel!
    @IBOutlet weak var card2ThreeLabel: UILabel!
    @IBOutlet weak var card2FourLable: UILabel!
    
    
    @IBAction func deal(_ sender: Any) {
        
        let cardOneNum = arc4random() % 10 + 1
        cardOneLabel.text = "\(cardOneNum)" 
        
        let cardTwoNum = arc4random() % 10 + 1
        cardTwoLabel.text = "\(cardTwoNum)"
        
        let cardThreeNum = arc4random() % 10 + 1
        cardThreeLabel.text = "\(cardThreeNum)"
        
        let cardFourNum = arc4random() % 10 + 1
        cardFourLabel.text = "\(cardFourNum)"

    }
    
    @IBAction func save(_ sender: Any) {
        card2OneLabel.text = "\(cardTwoLabel.text!)"
        card2TwoLabel.text = "\(cardOneLabel.text!)"
        card2ThreeLabel.text = "\(cardThreeLabel.text!)"
        card2FourLable.text = "\(cardFourLabel.text!)"
    }
}
