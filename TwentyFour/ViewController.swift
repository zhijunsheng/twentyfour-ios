//
//  ViewController.swift
//  TwentyFour
//
//  Created by Donald Sheng on 2018-07-24.
//  Copyright © 2018 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardOneLabel: UILabel!
    @IBOutlet weak var cardTwoLabel: UILabel!
    @IBOutlet weak var cardThreeLabel: UILabel!
    @IBOutlet weak var cardFourLabel: UILabel!
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        print("anything")
        let cardOneValue = arc4random() % 10
        let cardTwoValue = arc4random() % 10
        let cardThreeValue = arc4random() % 10
        let cardFourValue = arc4random() % 10
        cardOneLabel.text = "\(cardOneValue + 1)"
        cardTwoLabel.text = "\(cardTwoValue + 1)"
        cardThreeLabel.text = "\(cardThreeValue + 1)"
        cardFourLabel.text = "\(cardFourValue + 1)"
        
    }
   
    
}




