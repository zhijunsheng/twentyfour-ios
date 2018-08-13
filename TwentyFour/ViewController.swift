//
//  ViewController.swift
//  TwentyFour
//
//  Created by Donald Sheng on 2018-07-24.
//  Copyright © 2018 Gold Thumb Inc. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var soundPlayer: AVAudioPlayer!
    
    @IBOutlet weak var card0Label: UILabel!
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card2Label: UILabel!
    @IBOutlet weak var card3Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundFilePath = Bundle.main.path(forResource: "pick_release", ofType: "wav")
        let soundURL = URL(fileURLWithPath: soundFilePath!)
        soundPlayer = try? AVAudioPlayer(contentsOf: soundURL)
    }
    
    @IBAction func touchShuffle(_ sender: UIButton) {
        var card0Value = arc4random() % 10
        var card1Value = arc4random() % 10
        var card2Value = arc4random() % 10
        var card3Value = arc4random() % 10
        if card0Value == 0 {
            card0Value = 10
        }
        if card1Value == 0 {
            card1Value = 10
        }
        if card2Value == 0 {
            card2Value = 10
        }
        if card3Value == 0 {
            card3Value = 10
        }
        card0Label.text = "\(card0Value)"
        card1Label.text = "\(card1Value)"
        card2Label.text = "\(card2Value)"
        card3Label.text = "\(card3Value)"
        
        soundPlayer.play()
    }
}
