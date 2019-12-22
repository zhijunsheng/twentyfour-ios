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
    @IBOutlet weak var toughLabel: UILabel!
    @IBOutlet weak var toughLabel2: UILabel!
    @IBOutlet weak var toughLabel3: UILabel!
    @IBOutlet weak var toughLabel4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3, "3" (3 + 2) = 3 + 2 what happened
        firstCardLabel.text = "\(arc4random())"
        let b = arc4random()
        let smallerB = b % 10 + 1
        firstCardLabel.text = "\(smallerB)"
        
        secondCardLabel.text = "\(arc4random())"
        let c = arc4random()
        let smallerC = c % 10 + 1
        secondCardLabel.text = "\(smallerC)"
        
        thirdCardLabel.text = "\(arc4random())"
        let d = arc4random()
        let smallerD = d % 10 + 1
        thirdCardLabel.text = "\(smallerD)"
        
        fourthCardLabel.text = "\(arc4random())"
        let e = arc4random()
        let smallerE = e % 10 + 1
        fourthCardLabel.text = "\(smallerE)"
        
        
        
        
        
    }
    
    
    
    @IBAction func shuffle(_ sender: Any) {
        let x = arc4random()
        let smallerX = x % 5 + 1
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
    
    @IBAction func skip(_ sender: UIButton) {
        toughLabel.text = firstCardLabel.text 
        toughLabel2.text = secondCardLabel.text
        toughLabel3.text = thirdCardLabel.text
        toughLabel4.text = fourthCardLabel.text
        
    }
    
}
