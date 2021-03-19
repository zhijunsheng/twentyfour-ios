//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var card1: UILabel!
    @IBOutlet var card2: UILabel!
    @IBOutlet var card3: UILabel!
    @IBOutlet var card4: UILabel!
    
    @IBOutlet var answerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextCards(_ sender: Any) {
        let random1 = arc4random()
        card1.text = "\(random1 % 11)"
        
        // code for card2
        let random2 = arc4random()
        card2.text = "\(random2 % 11) "
        // code for card3
        let random3 = arc4random()
        card3.text = "\(random3 % 11)"
        let random4 = arc4random()
        card4.text = "\(random4 % 11)"
        
        answerTextField.text = ""
    }
    
}
  

