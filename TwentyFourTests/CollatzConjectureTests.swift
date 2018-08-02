//
//  CollatzConjecture.swift
//  TwentyFourTests
//
//  Created by Hanson Wen on 30/7/2018.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import XCTest

class CollatzConjectureTests: XCTestCase {
    
    /*
    
     n
     3n + 1 (if odd)
     n / 2  (if even)
 
     
     5 -> 16 -> 8 -> 4 -> 2 -> 1 -> 4 -> 2.......
     7 -> 22 -> 11 -> 34 -> 17 -> 52 -> 26 -> 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1 -> 4 -> 2.......
    */
    func testCollatz() {
        var a = 7
        print(a, terminator: "")
        while true {
            var isEven = true
            if a % 2 == 1 {
                isEven = false
            }
            if isEven == false {
                a = 3 * a + 1
                print(" -> \(a)", terminator: "")
            }
            if isEven == true {
                a = a / 2
                print(" -> \(a)", terminator: "")
            }
            if a == 1{
                print("......")
                break
            }
        }
    }
    
    func testSwapTwoInts() {
        var a = 5
        var b = 3
        print("a = \(a), b = \(b)")
        
        // your code goes here to swap a and b:
        (a,b) = (b,a)
        
        print("a = \(a), b = \(b)")
    }
    
    func testSwapTwoInts2() {
        var a = 5
        var b = 3
        print("a = \(a), b = \(b)")
        
        // your code goes here to swap a and b, try a + b
       
        
        print("a = \(a), b = \(b)")
    }

}
