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

    @IBAction func deal(_ sender: Any) {
        let number1 = arc4random() % 10 + 1
        cardOne.text = "\(number1)"
        
        let number2 = arc4random() % 10 + 1
        cardTwo.text = "\(number2)"
        
        let number3 = arc4random() % 10 + 1
        cardThree.text = "\(number3)"
        
        let number4 = arc4random() % 10 + 1
        cardFour.text = "\(number4)"
        
        
    }
    

}




