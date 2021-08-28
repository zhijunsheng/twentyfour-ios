//
//  StackTests.swift
//  TwentyFourTests
//
//  Created by Lambert Lin on 2021/7/26.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest
@testable import TwentyFour

class StackTests: XCTestCase {
    
    // "2 3 +" => 5
    /*
     
     
     
     */
    // "9 7 - 1 + 8 * " => 24
    /*
     FILO stack
     ---------
     |24
     ---------
     7 9 -
     1 2 +
     8 3 *
     ...
     */
    func parse(expr: String) -> Double { // expr = "9 7 -"
        let arr = expr.components(separatedBy: " ") // ["9", "7", "-"]
        print(arr)
        var stack: Stack = Stack() // we create a stack for use
        
        for sym in arr {
            print("\(sym)")
            if sym == "+" {
                stack.push(a: stack.pop() + stack.pop())
            } else if sym == "-" {
                stack.push(a: -stack.pop() + stack.pop())
            } else if sym == "*" {
                stack.push(a: stack.pop() * stack.pop())
            } else if sym == "/" {
                let num1 = stack.pop()
                let num2 = stack.pop()
                stack.push(a:num2 / num1)
            } else {
                stack.push(a: Double(sym)!)
            }
        }
        
        let answer = stack.pop()
        return answer
    }
    /*
     
     3 - 8
     
     3   8  => 5
     
     */
    
    func testParse() {
        XCTAssertEqual(24, parse(expr: "9 7 - 1 + 8 *"))
        XCTAssertEqual(5, parse(expr: "2 3 +"))
        XCTAssertEqual(12, parse(expr: "2 3 7 + +"))
        XCTAssertEqual(12, parse(expr: "2 3 + 7 +"))
        XCTAssertEqual(2, parse(expr: "9 7 -"))
        XCTAssertEqual(14, parse(expr: "13 4 5 - -"))
        XCTAssertEqual(12, parse(expr: "13 4 + 5 -"))
        XCTAssertEqual(34, parse(expr: "13 4 + 2 *"))
        XCTAssertEqual(34, parse(expr: "68 2 /"))
        XCTAssertEqual(1,parse(expr: "1 3 / 3 *"))
        print("\(7 / 3)")
        // "1 / 3 * 3"
        // "1 3 / 3 *" will fail :-(
        
    }
    
    func testPush() {
        var stack: Stack = Stack()
        stack.push(a: 4)
        stack.push(a: 5)
        
        XCTAssertEqual(5, stack.pop())
        XCTAssertEqual(4, stack.pop())
    }

    func testIsEmpty() {
        var stack = Stack()
        XCTAssertTrue(stack.isEmpty())
        stack.push(a: 5)
        stack.push(a: 4)
        XCTAssertFalse(stack.isEmpty())
        _ = stack.pop()
        _ = stack.pop()
        XCTAssertTrue(stack.isEmpty())
    }
}
