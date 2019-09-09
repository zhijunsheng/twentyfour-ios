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
    
    
    @IBAction func nextHand(_ sender: UIButton) {
        let cardOneRandom = arc4random()
        print(cardOneRandom)
        let carOneRandonSmaller = cardOneRandom % 10
        print(carOneRandonSmaller)
     
       
        
        cardOneLabel.text = "\(carOneRandonSmaller)"
        
        let cardTwoRandom = arc4random()
        print(cardTwoRandom)
        let cardTwoRandomSmaller = cardTwoRandom % 10
        print(cardTwoRandomSmaller)
        
        cardTwoLabel.text = "\(cardTwoRandomSmaller)"
        
        let cardThreeRandom = arc4random()
        print(cardThreeRandom)
        let cardThreeRandomSmaller = cardThreeRandom % 10
        print(cardThreeRandomSmaller)
        cardThreeLabel.text = "\(cardThreeRandomSmaller)"
        
        let cardFourRandom = arc4random()
        print(cardFourRandom)
        let cardFourRandomSmaller = cardFourRandom % 10
        print(cardFourRandomSmaller)
        cardFourLabel.text = "\(cardFourRandomSmaller)"
        
       
        
    }
    
    
}




