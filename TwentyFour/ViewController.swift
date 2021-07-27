//
//  ViewController.swift
//  TwentyFour
//
//  Created by Donald Sheng on 2018-07-24.
//  Copyright © 2018 Gold Thumb Inc. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var stack = Stack()
    
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    @IBOutlet weak var cardThree: UILabel!
    @IBOutlet weak var cardFour: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var soundPlayer: AVAudioPlayer!
    
    /*
     
     infix expression:
     2 + 3
     postfix:
     2 3 +
     
     2 - 3 => 2 3 -
     
     2 - 3 + 7 =>
     2 3 - 7 +
     -1 7 +
     
     7 3 7 9
     infix expression:
     3 * (9 - 7/7)
     postfix expression:
     3 9 7 7 ÷ - *
     
     
     6 8 1 5
     infix expression:
     6 * (8 + 1 - 5)
     postfix expression:
     6 8 1 + 5 - *
     6 9 5 - *
     6 4 *
     24
     
     we meet "6" first, do nothing
     then we meet "8", nothing to do
     then "1", still nothing to do
     then finally we meet an operator "+", we only need 2 operands, we can handle 8 + 1
     we know we met 6 before, now we have 9 from the last step
     equivalently, we have 6 9, now when meeting 5, do nothing
     ...
     
     stack: FILO, first in last out
     ------------------
     |24
     ------------------
     meeting "+":
     pop out 2 numbers from the stack to evaluate them like 8 + 1
     pop up 1
     pop up 8
     8 + 1
     what is the next action? very important!
     push 9
     meeting "5", do nothing but pushing it down
     meeting "-"
     pop up 5
     pop up 9
     9 - 5
     push 4
     meeting "*"
     pop up 4
     pop up 6
     4 * 6
     push 24
     now we keep going but find out the end of our expression
     the only thing in the stack has to be the result the expression
     
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundFilePath = Bundle.main.path(forResource: "open_game", ofType: "wav")
        let soundURL = URL(fileURLWithPath: soundFilePath!)
        soundPlayer = try? AVAudioPlayer(contentsOf: soundURL)
        stack.push(number: 3)
        stack.push(number: 4)
        print(stack.pop())
        print(stack.pop())
        stack.push(number: 6)
        print(stack.pop())
        stack.push(number: 1)
        print(stack.pop())
    }
    
    @IBAction func buttonTapped(_ sender: Any){
        soundPlayer.play()
        
        let cardOneValue = arc4random() % 10 + 1
        cardOne.text = "\(cardOneValue)"
        
        let cardTwoValue = arc4random() % 10 + 1
        cardTwo.text = "\(cardTwoValue)"
        
        let cardThreeValue = arc4random() % 10 + 1
        cardThree.text = "\(cardThreeValue)"
        
        let cardFourValue = arc4random() % 10 + 1
        cardFour.text = "\(cardFourValue)"
        
        
    }
    @IBAction func answerCheck(_ sender: Any) {
//        let twentyfour = textField.text
//        if twentyfour == 24 {
//            <#code#>
//        }
    }
}
