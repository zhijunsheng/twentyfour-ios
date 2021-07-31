//
//  StackTests.swift
//  TwentyFourTests
//
//  Created by Harry Shen on 7/31/21.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest
@testable import TwentyFour

class StackTests: XCTestCase {
    
    
    func testStackPush() {
        var s = Stack()
        s.push(5)
        s.push(4)
        XCTAssertEqual(4, s.pop())
        XCTAssertFalse(s.isEmpty())
        XCTAssertEqual(5, s.pop())
    }
}
