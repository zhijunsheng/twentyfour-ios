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
    @IBOutlet weak var answerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        changeFourCards()
    }
    
    @IBAction func buttonTouched(_ sender: Any) {
        changeFourCards()
        
        answerTextField.text = ""
    }

    func changeFourCards() {
        card1.text = "\(arc4random() % 10 + 1)"
        card2.text = "\(arc4random() % 10 + 1)"
        card3.text = "\(arc4random() % 10 + 1)"
        card4.text = "\(arc4random() % 10 + 1)"
    }
}

