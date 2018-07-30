//
//  ViewController.swift
//  TwentyFour
//
//  Created by Donald Sheng on 2018-07-24.
//  Copyright © 2018 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    @IBOutlet weak var cardThree: UILabel!
    @IBOutlet weak var cardFour: UILabel!
    
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        let numberOne = arc4random() % 10 + 1
        cardOne.text = "\(numberOne)"
        let numberTwo = arc4random()  % 10 + 1
        cardTwo.text = "\(numberTwo)"
        let numberThree = arc4random()  % 10 + 1
        cardThree.text = "\(numberThree)"
        let numberFour = arc4random()  % 10 + 1
        cardFour .text = "\(numberFour)"
        
        
        
        
        
        
    }

    
}




