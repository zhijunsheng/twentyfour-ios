//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardLabel: UILabel!
    @IBOutlet weak var secondCardLabel: UILabel!
    @IBOutlet weak var thirdCardLabel: UILabel!
    @IBOutlet weak var fourthCardLabel: UILabel!

    @IBAction func buttonTouched(_ sender: Any) {
        let x = arc4random()
        
        let smallerX = x % 10
        print("\(smallerX)")
        // what is the remainder of 19 ÷ 5 ?
        // / %
        // 19 % 5 is 4
        // 95327 % 100 is 27
        
        firstCardLabel.text = "\(smallerX)"
        
        
        let y = arc4random()
        let smallerY = y % 10
        secondCardLabel.text = "\(smallerY)"
        
        
        let z = arc4random()
        let smallerZ = z % 10
        thirdCardLabel.text = "\(smallerZ)"
        
        
        
        let a = arc4random()
        let smallerA = a % 10
        fourthCardLabel.text = "\(smallerA)"
        
        
        
    }
    
    
}




