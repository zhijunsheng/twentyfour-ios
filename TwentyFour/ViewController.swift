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
        let smallerX = x % 10 + 1
        print("\(smallerX)")
        firstCardLabel.text = "\(smallerX)"
        
        let y = arc4random()
        let smallerY = y % 10 + 1
        secondCardLabel.text = "\(smallerY)"
        
        let z = arc4random()
        let smallerZ = z % 10 + 1
        thirdCardLabel.text = "\(smallerZ)"
        
        let a = arc4random()
        let smallerA = a % 10 + 1
        fourthCardLabel.text = "\(smallerA)"
   }
}
