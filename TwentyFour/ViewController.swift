//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    @IBOutlet weak var cardThree: UILabel!
    @IBOutlet weak var cardFour: UILabel!
    
    @IBAction func shuffleTouched(_ sender: Any) {
        print("Welcome to the Cow Farm")
        var randomCard0 = arc4random()
        print(randomCard0 % 10)
        if randomCard0 % 10 == 0 {
            randomCard0 = arc4random()
        } else {
            cardOne.text = "\(randomCard0 % 10)"
        }
      
        let randomCard1 = arc4random()
        cardTwo.text = "\(randomCard1 % 10)"
        
        let randomCard2 = arc4random()
        cardThree.text = "\(randomCard2 % 10)"
        
        let randomCard3 = arc4random()
        cardFour.text = "\(randomCard3 % 10)"
        
    }
    
    
    
}




