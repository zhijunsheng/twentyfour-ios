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
        
        set4CardsRandom()
    }
    
    @IBAction func shuffle(_ sender: Any) {
        set4CardsRandom()
    }
    
    @IBAction func skip(_ sender: UIButton) {
        toughLabel.text = "\(firstCardLabel.text!)   \(secondCardLabel.text!)   \(thirdCardLabel.text!)   \(fourthCardLabel.text!)"
        
        set4CardsRandom()
    }
    
    func set4CardsRandom()  {
        let b = arc4random()
        let smallerB = b % 13 + 1
        firstCardLabel.text = "\(smallerB)"
        
        let c = arc4random()
        let smallerC = c % 13 + 1
        secondCardLabel.text = "\(smallerC)"
        
        let d = arc4random()
        let smallerD = d % 13 + 1
        thirdCardLabel.text = "\(smallerD)"
        
        let e = arc4random()
        let smallerE = e % 13 + 1
        fourthCardLabel.text = "\(smallerE)"
    }
    
}



