//
//  RationalTests.swift
//  TwentyFourTests
//
//  Created by Peter Shi on 2021-08-08.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest
@testable import TwentyFour

class RationalTests: XCTestCase {

    func testMul() {
        let r1 = Rational(p: 2, q: 3)
        let r2 = Rational(p: 3, q: 2)
        XCTAssertEqual(1, r1.mul(r1: r2).q)
        XCTAssertEqual(1, r1.mul(r1: r2).p)
    }

}
