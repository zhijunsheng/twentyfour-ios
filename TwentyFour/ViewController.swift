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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let b = arc4random()
        let smallerB = b % 10 + 1
        firstCardLabel.text = "\(smallerB)"
        
        let c = arc4random()
        let smallerC = c % 10 + 1
        secondCardLabel.text = "\(smallerC)"
        
        let d = arc4random()
        let smallerD = d % 10 + 1
        thirdCardLabel.text = "\(smallerD)"
        
        let e = arc4random()
        let smallerE = e % 10 + 1
        fourthCardLabel.text = "\(smallerE)"
    }
    
    @IBAction func shuffle(_ sender: Any) {
        let x = arc4random()
        let smallerX = x % 10 + 1
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
        
        toughLabel.text = "\(firstCardLabel.text!)   \(secondCardLabel.text!)   \(thirdCardLabel.text!)   \(fourthCardLabel.text!)"
        
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
    
}



