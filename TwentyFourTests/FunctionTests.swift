//
//  FunctionTests.swift
//  TwentyFourTests
//
//  Created by Grace Huang on 9/8/19.
//  Copyright © 2019 Bowen Lin. All rights reserved.
//

import XCTest

class FunctionTests: XCTestCase {
    
    func testAdd() {
        let anything = add(a: 23, b: 54)
        print(anything)
        
        print(add(a: 2, b: 9))
    }
    
    
    func add(a: Int, b: Int) -> Int {
        let sum = a + b
        return sum
        
    }
    
    func testSayHelloTo() {
        sayHelloTo(name: "Grace")
    }
    
    func sayHelloTo(name: String) {
        print("Hello \(name)")
    }
    
    func testSayHello() {
        sayHello()
        sayHello()
    }
    
    func sayHello() {
        print("Hello")
    }

    func testHello() {
        print("hello")
    }
    
    func subtract(a: Int, b: Int) -> Int {
        let difference = a - b
        return difference
        
    }
   
    func testSubtract() {
        let difference = subtract(a: 10, b: 5)
        XCTAssertEqual(5, difference)
    }
    
    func times(a: Int, b: Int) -> Int {
        let product = a * b
        return product
        
    }
    
    func testProduct() {
        let product = times(a: 10, b: 5)
        XCTAssertEqual(50, product)
    }
    
    func divide(a: Int, b: Int) -> Int {
        let quotiant = a / b
        return quotiant
        
    }
    
    func testDivide() {
        XCTAssertEqual(2, divide(a: 8, b: 3))
        XCTAssertEqual(2, divide(a: 9, b: 4))
        XCTAssertEqual(0, divide(a: 7, b: 10))
    }

    func testForLoop() {
        for k in 0..<7 {
            print("k = \(k), \(k * 5 + 10 )")
        }
    }
    
    /*
 
     0
     0 + 1 = 1
     
     
    */
    func testSumUp() {
        var sum = 0
        for x in 1...100 {
            sum = sum + x
        }
        XCTAssertEqual(5050, sum)
    }

    /*
 
     5!
     1
     1 * 2 = 2
     2 * 3 = 6
     6 * 4 = 24
     24 * 5 = 120
     
    */
    func testFactorial() {
        var factorial = 1
        for y in 1...5 {
            factorial = factorial * y
        }
        XCTAssertEqual(120, factorial)
    }
}
