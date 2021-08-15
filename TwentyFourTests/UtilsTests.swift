//
//  UtilsTests.swift
//  TwentyFourTests
//
//  Created by Peter Shi on 2021-08-06.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest
@testable import TwentyFour

class UtilsTests: XCTestCase {

    func testIsCheating() {
        XCTAssertFalse(Utils.isCheating(cards: ["3", "4", "5", "1"], input: "3 4 5 1 + - *"))
        XCTAssertTrue(Utils.isCheating(cards: ["1", "9", "5", "1"], input: "3 4 5 1 + - *"))
    }
    
    func testParse() {
        XCTAssertEqual(24.0, Utils.parse(postfix: "3 8 *"))
        XCTAssertEqual(1.0, Utils.parse(postfix: "1 3 / 3 *"))
    }
    
    // 30303030303031, 60606060606063
    func testgcd() {
        XCTAssertEqual(8, Utils.gcd(n1: 24, n2: 16))
        XCTAssertEqual(7, Utils.gcd(n1: 7, n2: 14))
        XCTAssertEqual(1, Utils.gcd(n1: 13, n2: 17))
        XCTAssertEqual(16, Utils.gcd(n1: 0, n2: 16))
        XCTAssertEqual(30303030303031, Utils.gcd(n1: 30303030303031, n2: 60606060606062))
        
        /*
         
         48, 36
         48, 36: 48/36 = 1 r 12
         36, 12: 36/12 = 3 r 0 stop
         
         23, 10: 23/10 = 2 r 3
         10,  3: 10/3 = 3 r 1
          3,  1: 3/1 = 3 r 0 stop
         
         1 + 2 + 3 + ... + n = n(n + 1)/2
         
         when n = 1, 1 * (1 + 1)/2 = 1
         assume it works for n
         
         1 + ... + n + (n+1) = n(n+1)/2 + n+1 ?= (n+1)(n+1 + 1)/2
         induction in math
         */
    }
}
