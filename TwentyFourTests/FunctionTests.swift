//
//  FunctionTests.swift
//  TwentyFourTests
//
//  Created by Andy Yan on 2019-12-27.
//  Copyright © 2019 Bowen Lin. All rights reserved.
//

import XCTest

class FunctionTests: XCTestCase {
    
    func testFunctionCall() {
        goodStuff()
        goodStuff()
        goodStuff()
    }
    
    func goodStuff() {
        print("Good morning")
        print("Hello")
        print("Good afternoon")
        print("Good evening")
    }
}
