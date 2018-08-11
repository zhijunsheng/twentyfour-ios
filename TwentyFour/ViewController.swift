//
//  ViewController.swift
//  TwentyFour
//
//  Created by Donald Sheng on 2018-07-24.
//  Copyright © 2018 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card0Label: UILabel!
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card2Label: UILabel!
    @IBOutlet weak var card3Label: UILabel!
    
    @IBAction func touchNext(_ sender: UIButton) {
        let card0Value = arc4random() % 10 + 1
        let card1Value = arc4random() % 10 + 1
        let card2Value = arc4random() % 10 + 1
        let card3Value = arc4random() % 10 + 1
        card0Label.text = "\(card0Value)"
        card1Label.text = "\(card1Value)"
        card2Label.text = "\(card2Value)"
        card3Label.text = "\(card3Value)"
        
    }
}




