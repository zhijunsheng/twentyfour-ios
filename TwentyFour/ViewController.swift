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
        
        card1.text = "9"
        card2.text = "6"
        card3.text = "5"
        card4.text = "7"
       
        
    }
  
    @IBAction func next(_ sender: Any) {
        let card1Number = arc4random() % 10 + 1
        let card2Number = arc4random() % 10 + 1
        let card3Number = arc4random() % 10 + 1
        
        
    }
    
}
