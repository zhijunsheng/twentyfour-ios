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
    

}
