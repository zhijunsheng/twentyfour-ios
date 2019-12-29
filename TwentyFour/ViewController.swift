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
        let max: Int = 13
        
        let b = Int(arc4random())
        let smallerB = b % max + 1
        firstCardLabel.text = "\(smallerB)"
        
        let c = Int(arc4random())
        let smallerC = c % max + 1
        secondCardLabel.text = "\(smallerC)"
        
        let d = Int(arc4random())
        let smallerD = d % max + 1
        thirdCardLabel.text = "\(smallerD)"
        
        let e = Int(arc4random())
        let smallerE = e % max + 1
        fourthCardLabel.text = "\(smallerE)"
    }

 }



