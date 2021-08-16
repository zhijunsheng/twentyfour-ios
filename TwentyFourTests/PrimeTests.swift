//
//  PrimeTests.swift
//  TwentyFourTests
//
//  Created by Lambert Lin on 2021/8/9.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest

class PrimeTests: XCTestCase {

    func testIsPrime() {
        XCTAssertTrue(isPrime(a: 13))
        XCTAssertFalse(isPrime(a: 9))
        XCTAssertFalse(isPrime(a: 10))
        XCTAssertFalse(isPrime(a: 14))
        XCTAssertTrue(isPrime(a: 59))
        XCTAssertTrue(isPrime(a: 331))
        XCTAssertTrue(isPrime(a: 3331))
        XCTAssertTrue(isPrime(a: 33331))
        XCTAssertTrue(isPrime(a: 333331))
        XCTAssertTrue(isPrime(a: 3333331))
        XCTAssertTrue(isPrime(a: 33333331))
        XCTAssertFalse(isPrime(a: 333333331))
        XCTAssertFalse(isPrime(a: 3333333331))
        XCTAssertTrue(isPrime(a: 30303030303031))
    }
    
    func isPrime(a: Int) -> Bool {
        for i in 2...1 + Int(sqrt(Double(a))) {
            if a % i == 0 {
                return false
            }
        }
        return true
    }
    
    func testIsEven() {
        XCTAssertTrue(isEven(a: 2))
        XCTAssertFalse(isEven(a: 5))
    }
    
    func isEven(a: Int) -> Bool {
        return a % 2 == 0
    }
}
