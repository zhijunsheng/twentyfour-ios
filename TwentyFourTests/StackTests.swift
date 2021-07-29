//
//  StackTests.swift
//  TwentyFourTests
//
//  Created by Felix Lo on 2021-07-08.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import XCTest

class StackTests: XCTestCase {
    
    func testStack() {
        var s = Stack()
        XCTAssertTrue(s.isEmpty())
        s.push(num: 2)
        s.push(num: 3)
        XCTAssertFalse(s.isEmpty())
        s.pop()
        s.pop()
        XCTAssertTrue(s.isEmpty())
    }
}

struct Stack {
    var arr: [Int] = []
    var top = -1
    
    mutating func push(num: Int) {
        top += 1
        arr.append(num)
    }
    
    mutating func pop() -> Int {
        let num = arr[top]
        arr[top] = 0
        top -= 1
        return num
    }
    
    func isEmpty() -> Bool {
        print(arr.count)
//        return arr.count == 0
        return top == -1
    }
}

/*
 
 7 + 4 + 7 + 7 != 24
 4 * 7
 7 - 4
 7 * 7
 4 + 7
 7 - 4 + 7
 7 + 7
 7/7
 */
