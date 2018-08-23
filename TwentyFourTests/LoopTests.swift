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
        //let sum = 4.0 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 + 4/13 - 4/15
    
        // mapping from
        // 0  1  2  3  4 (i)
        // to
        // 1  3  5  7  9 (2 * i + 1 )
    
        // to
        // 1 -3 +5 -7 +9   (pow(-1, i) * (2 * i + 1 ))
        //
        
        let items = 10000 //3.14149265359003
        var sum = 0.0
        for i in 0 ..< items {
            let doubleFromDecimal = NSDecimalNumber(decimal: pow(-1, i)).doubleValue

            let frac = 4.0 / (2.0 * Double(i) + 1.0) * doubleFromDecimal
            sum = sum + frac
      
        }
        print(sum)
    }
    
    func testPi3() {
        let items = 5000 //3.14149265359003
        var sum = 0.0
        var bottom = 1.0
        for i in 0 ..< items {
            sum = sum + 4/bottom - 4/(bottom + 2)
            
            bottom = bottom + 4
        }
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
