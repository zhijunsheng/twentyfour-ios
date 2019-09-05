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
    
    
    @IBAction func nextHand(_ sender: UIButton) {
        print("Hello")
        let cardOneRandom = arc4random()
        print(cardOneRandom)
        let carOneRandonSmaller = cardOneRandom % 10
        print(carOneRandonSmaller)
        
        // 1798154826 / 100， what is the remainder?
        // 1798154826 % 100 => 26
        
        
        
        cardOneLabel.text = "\(carOneRandonSmaller)"
    }
    
    
}




