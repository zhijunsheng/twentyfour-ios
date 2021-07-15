//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet var cardOneLabel: UILabel!
    
    @IBOutlet var cardTwoLabel: UILabel!
    
    @IBOutlet var cardThreeLabel: UILabel!
    
    @IBOutlet var cardFourLabel: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        
        let number1 = arc4random()
        let number2 = arc4random()
        let number3 = arc4random()
        let number4 = arc4random()
        
        let numberSmall1 = number1 % 10 + 1
        let numberSmall2 = number2 % 10 + 1
        let numberSmall3 = number3 % 10 + 1
        let numberSmall4 = number4 % 10 + 1
      
        cardOneLabel.text = "\(numberSmall1 )"
        cardTwoLabel.text = "\(numberSmall2)"
        cardThreeLabel.text = "\(numberSmall3 )"
        cardFourLabel.text = "\(numberSmall4)"
        
        textBox.text = ""
    }
    
}




