//
//  ParsingTests.swift
//  TwentyFourTests
//
//  Created by Harry Shen on 7/31/21.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest

class ParsingTests: XCTestCase {

    func testSwappingTwoInts() {
        var a: Int = 3
        var b: Int = 5
        XCTAssertEqual(3, a)
        XCTAssertEqual(5, b)
        
        // your code to swap them
        a = a + b
        b = a - b
        a = a - b
        
        XCTAssertEqual(5, a)
        XCTAssertEqual(3, b)
    }

}

/*
 
 stack FILO
 push(..)
 pop(..)
 -----------
 |
 -----------
 
 
 3 8 * 1 * 1 *
 24 1 * 1 *
 24 1 *
 24
 
 6 4 7 * + 10 -
 6 28 + 10 -
 34 10 -
 24
 -----------
 |24
 -----------
 
 
 count = 2
 
 24
 
 */
