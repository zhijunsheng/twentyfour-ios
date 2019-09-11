//
//  BoardView.swift
//  TwentyFour
//
//  Created by 马莺 on 2019/8/7.
//  Copyright © 2019 Bowen Lin. All rights reserved.
//

import UIKit

class BoardView: UIView {

    
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        
        for i in 0..<5 {
            pencil.move(to: CGPoint(x: 23, y: 40 + i * 30))
            pencil.addLine(to: CGPoint(x: 203, y: 40 + i * 30))
        }
        
        for i in 0..<7 {
            pencil.move(to: CGPoint(x: 23 + i * 30, y: 40))
            pencil.addLine(to: CGPoint(x: 23 + i * 30, y: 40 + 4 * 30))
        }
        
        pencil.stroke()
        
    }
}
