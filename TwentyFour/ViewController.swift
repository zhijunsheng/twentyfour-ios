//
//  ViewController.swift
//  TwentyFour
//
//  Created by Donald Sheng on 2018-07-24.
//  Copyright © 2018 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    @IBOutlet weak var cardThree: UILabel!
    @IBOutlet weak var cardFour: UILabel!
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let cardOneValue = arc4random() % 10 + 1
        cardOne.text = "\(cardOneValue)"
        
        let cardTwoValue = arc4random() % 10 + 1
        cardTwo.text = "\(cardTwoValue)"
        
        let cardThreeValue = arc4random() % 10 + 1
        cardThree.text = "\(cardThreeValue)"
        
        let cardFourValue = arc4random() % 10 + 1
        cardFour.text = "\(cardFourValue)"
    }
}
