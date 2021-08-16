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
