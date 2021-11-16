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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomCards()
        
    }
    
    @IBAction func nextHand(_ sender: Any) {

        randomCards()
    }
    
    func randomCards() {
        let random = arc4random() % 10 + 1
        let random2 = arc4random() % 10 + 1
        let random3 = arc4random() % 10 + 1
        let random4 = arc4random() % 10 + 1
        
        card1.text = "\(random)"
        card2.text = "\(random2)"
        card3.text = "\(random3)"
        card4.text = "\(random4)"
    }
    
}




