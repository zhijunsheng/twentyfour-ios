//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var s = Stack()
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card2Label: UILabel!
    @IBOutlet weak var card3Label: UILabel!
    @IBOutlet weak var card4Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let card1Raw = arc4random() % 10 + 1
        let card2Raw = arc4random() % 10 + 1
        let card3Raw = arc4random() % 10 + 1
        let card4Raw = arc4random() % 10 + 1
        card1Label.text = "\(card1Raw)"
        card2Label.text = "\(card2Raw)"
//        card3Label.text = "\(card3Raw)"
//        card4Label.text = "\(card4Raw)"
    }
    
    
    @IBAction func playAgain(_ sender: Any) {
        let card1Raw = arc4random() % 10 + 1
        let card2Raw = arc4random() % 10 + 1
        let card3Raw = arc4random() % 10 + 1
        let card4Raw = arc4random() % 10 + 1
        card1Label.text = "\(card1Raw)"
        card2Label.text = "\(card2Raw)"
        card3Label.text = "\(card3Raw)"
        card4Label.text = "\(card4Raw)"
        answerLabel.text = ""
        answerTextField.text = ""
    }
    
    @IBAction func checkAnswer(_ sender: Any) {
        // 10 3 +
        guard let answer = answerTextField.text, !answer.isEmpty else {
            return
        }
        // next we'lol d
        // "10 3 +" => ["10", "3", "+"]
        let elements = answer.components(separatedBy: " ")
        for element in elements {
            if element == "+" {
                s.push(n: s.pop()+s.pop())
            } else if element == "-" {
                s.push(n: -s.pop()+s.pop())
            } else if element == "*" {
                s.push(n: s.pop()*s.pop())
            } else if element == "/" {
                let divisor = s.pop()
                let dividend = s.pop()
                s.push(n: dividend/divisor)
            } else {
                if notCheating(num: element) {
                    s.push(n: Int(element)!)
                } else {
                    answerLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                    answerLabel.text = "Stop cheating!"
                    return
                }
            }
        }
        
        if s.pop() == 24 {
            answerLabel.textColor = #colorLiteral(red: 0, green: 0.7266386901, blue: 0.1631791511, alpha: 1)
            answerLabel.text = "Correct"
        } else {
            answerLabel.textColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            answerLabel.text = "Incorrect"
        }
    }
    
    func notCheating(num: String) -> Bool {
        return num == card1Label.text || num == card2Label.text || num == card3Label.text || num == card4Label.text
            
        
    }
    
    
}

// int => float or double
// we might get 23.99999999 or 24.000000001 instead of 24.0
