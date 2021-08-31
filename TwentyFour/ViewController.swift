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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        show4RandomCards()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        show4RandomCards()
        textBox.text = ""
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        guard let expression = textBox.text else { return }
        print(expression)
    }
    func show4RandomCards() {
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
    }
}

/*
 
 normal infix expression
 3 + 5
 
 (3 + 5) * (2 + 1)
 
 learn the famous postfix expr
 
 3 5 +
 
 infix 9 - 2 = 7
 postfix 9 2 - = 7
 
 3 * 4 => 3 4 *
 
 (3+5)*(2+1)
 3 5 + 2 1 + *
 
 1 2 3 + + =>
 1 5 +
 6
 
 1 2 + 3 +
 3 3 +
 6
 
 infix
 3 + 2 * 5 =>
 postfix:
 3 2 + 5 *
 
 8 4 - 10 10 + +
 4 10 10 + +
 4 20 +
 24
 
 8 4 - 10 + 10 +
 4 10 + 10 +
 14 10 +
 24
 
 6 3 / 9 * 6 +
 2 9 * 6 +
 18 6 +
 24
 
 
 */




