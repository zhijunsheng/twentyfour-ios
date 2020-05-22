//
//  ViewController.swift
//  TwentyFour
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card2Label: UILabel!
    @IBOutlet weak var card3Label: UILabel!
    @IBOutlet weak var card4Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let card1Raw = arc4random() % 10 + 1
        let card2Raw = arc4random() % 10 + 1
        let card3Raw = arc4random() % 10 + 1
        let card4Raw = arc4random() % 10 + 1
        card1Label.text = "\(card1Raw)"
        card2Label.text = "\(card2Raw)"
        card3Label.text = "\(card3Raw)"
        card4Label.text = "\(card4Raw)"
    }
    
    
    @IBAction func pressButton(_ sender: Any) {
        let card1Raw = arc4random() % 10 + 1
        let card2Raw = arc4random() % 10 + 1
        let card3Raw = arc4random() % 10 + 1
        let card4Raw = arc4random() % 10 + 1
        card1Label.text = "\(card1Raw)"
        card2Label.text = "\(card2Raw)"
        card3Label.text = "\(card3Raw)"
        card4Label.text = "\(card4Raw)"
    }
    
    
}




