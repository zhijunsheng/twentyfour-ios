//
//  StackTests.swift
//  TwentyFourTests
//
//  Created by daobao on 2021/7/24.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest
@testable import TwentyFour

class StackTests: XCTestCase {

    func testPush() {
        var s = Stack()
        
        s.push(n: 6)
        XCTAssertEqual(6, s.pop())
    }
    
    func testIsEmpty() {
        var s = Stack()
        
        XCTAssertTrue(s.isEmpty())
        
        s.push(n: 7)
        
        XCTAssertFalse(s.isEmpty())
        s.pop()
        XCTAssertTrue(s.isEmpty())
    }
    
    
}
