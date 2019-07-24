//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var card1: UILabel!
    @IBOutlet weak var card2: UILabel!
    @IBOutlet weak var card3: UILabel!
    @IBOutlet weak var card4: UILabel!
    
    @IBAction func buttonTouched(_ sender: Any) {
        let x = arc4random()
        let smallerX = x % 10 + 1
        card1.text = "\(smallerX)"
        
        let z = arc4random()
        let smallerZ = z % 10 + 1
        card2.text = "\(smallerZ)"
        
        let y = arc4random()
        let smallerY = y % 10 + 1
        card3.text = "\(smallerY)"
        
        let a = arc4random()
        let smallerA = a % 10 + 1
        card4.text = "\(smallerA)"
        
        
    }
    
}




