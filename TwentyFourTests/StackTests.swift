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
    func testPush() {
        var stack: Stack = Stack()
        
        print(stack.arr)
        stack.push(a: 4)
        stack.push(a: 5)
        print(stack.arr)
        let n: Int = stack.pop()
        print(stack.arr)
        print(stack.arr)
        print(n)
     
    }

    func testIsEmpty() {
        var stack = Stack()
        XCTAssertTrue(stack.isEmpty())
        stack.push(a: 5)
        XCTAssertFalse(stack.isEmpty()) 
    }

    func add(a: Int,b: Int) -> Int {
        return a + b
    }
    
    func testAdd() {
        XCTAssertEqual(7, add(a: 3, b: 4))
        XCTAssertEqual(4325, add(a: 300, b: 4025))
    }
    
    func square(a: Int) -> Int {
        return  a * a
    }
    
    
    func testSquare() {
        XCTAssertEqual(4, square(a: 2))
        XCTAssertEqual(25, square(a: 5))
    }
}
