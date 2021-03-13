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
        card3Label.text = "\(card3Raw)"
        card4Label.text = "\(card4Raw)"
        
        s.push(n: 1)
        s.push(n: 2)
        s.push(n: 3)
        print(s.pop())
        print(s.pop())
        print(s.pop())
        s.push(n: 4)
        s.push(n: 5)
        print(s.pop())
        print(s.pop())
    }
    
    
    @IBAction func pressButton(_ sender: Any) {
        let card1Raw = arc4random() % 10 + 1
        let card2Raw = arc4random() % 10 + 1
        let card3Raw = arc4random() % 10 + 1
        let card4Raw = arc4random() % 10 + 1
        card1Label.text = "\(card1Raw)"
        card2Label.text = "\(card2Raw)"
        card3Label.text = "\(card3Raw)"
        card4Label.text = "\(card4Raw)"
    }
    
    @IBAction func checkAnswer(_ sender: Any) {
        // 10 3 +
        guard let answer = answerTextField.text else {
            return
        }
        // next we'lol d
        // "10 3 +" => ["10", "3", "+"]
        let elements = answer.components(separatedBy: " ")
        for element in elements {
            if element == "+" {
                s.push(n: s.pop()+s.pop())
            } else {
                s.push(n: Int(element)!)
            }
        }
        print(s.pop())
    }
    
    
}
