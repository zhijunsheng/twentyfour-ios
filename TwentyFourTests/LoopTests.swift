//
//  LoopTests.swift
//  TwentyFourTests
//
//  Created by Joy Hu on 2018-08-09.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import XCTest

class LoopTests: XCTestCase {
    
    // pi = 4 - 4/3 + 4/5 - 4/7 + ...
    func testPi2() {
        let items = 5
        let sum = 4 - 4/3 + 4/5 - 4/7 + 4/9
        print(sum)
    }
    
    func testPi(){
        // 1 + 1/2*2 + .. = pi * pi / 6
        let items = 10000000
//        let sum = 1 + 1/4.0 + 1/9.0 + 1/16.0 + 1/25.0
        var sum = 0.00
        for i in 0 ..< items {
            let frac = 1.0 / Double((i + 1) * (i + 1))
            sum = sum + frac
            
        }
        let pi = sqrt(sum * 6.0)
        print("pi = \(pi)")
        
    }
    
    func testLoop(){
        var sum = 0
        for i in 0...15 {
            sum = sum + i
        }
        print(sum)
        
        var prod = 1
        for i in 1...5{
            prod = prod * i
        }
        print(prod)
    }
    
}
