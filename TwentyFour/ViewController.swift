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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextCards(_ sender: Any) {
        let random1 = arc4random()
        card1.text = "\(random1 % 10)"
        
        // code for card2
        let random2 = arc4random()
        card2.text = "\(random2 % 10) "
        // code for card3
        let random3 = arc4random()
        card3.text = "\(random3 % 10)"
        let random4 = arc4random()
        card4.text = "\(random4 % 10)"
        
        // 7 / 2 r
        // 17 / 5
        // 17 / 10 r 7
        // 23 / 10 r 3
        // 120 / 20 r 0
        // 120 / 10 r 0
        // 120 / 100 r 20
        // 23341120 / 100 r 20
    }
    
}

   
// (9 - 2) * 4 - 4 = 24

