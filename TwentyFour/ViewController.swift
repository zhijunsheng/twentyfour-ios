//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    var s: Stack = Stack()
    @IBOutlet weak var cardOneLabel: UILabel!
    @IBOutlet weak var cardTwoLabel: UILabel!
    @IBOutlet weak var cardThreeLabel: UILabel!
    @IBOutlet weak var cardFourLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        s.push(n: 7)
        s.push(n: 8)
        print("\(s.pop()) \(s.pop())")
        s.push(n: 2)
        s.push(n: 3)
        s.push(n: 4)
        print("\(s.pop()) \(s.pop()) \(s.pop())")
    }
    @IBAction func nextHand(_ sender: UIButton) {
        let cardOneRandom = arc4random()
        let carOneRandonSmaller = cardOneRandom % 10 + 1
        cardOneLabel.text = "\(carOneRandonSmaller)"
        
        let cardTwoRandom = arc4random()
        let cardTwoRandomSmaller = cardTwoRandom % 10 + 1
        cardTwoLabel.text = "\(cardTwoRandomSmaller)"
        
        let cardThreeRandom = arc4random()
        let cardThreeRandomSmaller = cardThreeRandom % 10 + 1
        cardThreeLabel.text = "\(cardThreeRandomSmaller)"
        
        let cardFourRandom = arc4random()
        let cardFourRandomSmaller = cardFourRandom % 10 + 1
        cardFourLabel.text = "\(cardFourRandomSmaller)"
    }
    
    
    
}
