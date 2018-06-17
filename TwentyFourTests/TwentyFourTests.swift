//
//  TwentyFourTests.swift
//  TwentyFourTests
//
//  Created by Bowen Lin on 2018-05-08.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import XCTest
@testable import TwentyFour

class TwentyFourTests: XCTestCase {
    
    func testTwentyFour(){
        
        let x = twentyFour(a: 1.0, b: 5.0, c: 3, d: 1)
        print(x)
    }
    
    func testFindSolution(){
        XCTAssertEqual("((3.0 + 8.0) + (4.0 + 9.0))", findSolution(a: 3, b: 8, c: 4, d: 9))
        XCTAssertEqual("(((24.0 - 6.0) - 6.0) * 2.0)", findSolution(a: 24, b: 6, c: 6, d: 2))
        XCTAssertEqual("(8.0 / (3.0 - (8.0 / 3.0)))", findSolution(a: 3, b: 3, c: 8, d: 8))
        XCTAssertEqual("nothing", findSolution(a: 6, b: 6, c: 4, d: 4))
        XCTAssertEqual("((5.0 + 1.0) * (3.0 + 1.0))", findSolution(a: 5, b: 1, c: 3, d: 1))
        XCTAssertEqual("(((10.0 * 10.0) - 4.0) / 4.0)", findSolution(a: 10, b: 10, c: 4, d: 4))
        XCTAssertEqual("((5.0 + 1.0) * (1.0 + 3.0))", findSolution(a: 5, b: 3, c: 1, d: 1))
        
        print(findSolution(a: 5, b: 3, c: 1, d: 1))
    }
    
    func findSolution(a: Double, b: Double, c: Double, d: Double) -> String {
        
        for abcd in twentyFour(a: a, b: b, c: c, d: d){
            for (i, ab) in calculationOfTwoItems(itemOne: abcd.a, itemTwo: abcd.b).enumerated() {
                
                for (l, cd) in calculationOfTwoItems(itemOne: abcd.c, itemTwo: abcd.d).enumerated() {
                    for (v, z) in calculationOfTwoItems(itemOne: ab, itemTwo: cd).enumerated() {
                        
                        if abs(z - 24.0) < 0.0001 {
                            let ab = expressionOfTwoItems(x: "\(abcd.a)", y: "\(abcd.b)", operation: i)
                            let cd = expressionOfTwoItems(x: "\(abcd.c)", y: "\(abcd.d)", operation: l)
                            let abcd = expressionOfTwoItems(x: ab, y: cd, operation: v)
                            print(abcd)
                            return abcd
                        }
                    }
                }
                
                for (j, abc) in calculationOfTwoItems(itemOne: ab, itemTwo: abcd.c).enumerated() {
                 
                    for (k, x) in calculationOfTwoItems(itemOne: abc, itemTwo: abcd.d).enumerated() {

                        if abs(x - 24.0) < 0.0001 {
                            let ab = expressionOfTwoItems(x: "\(abcd.a)", y: "\(abcd.b)", operation: i)
                            let abc = expressionOfTwoItems(x: ab, y: "\(abcd.c)", operation: j)
                            let abcd = expressionOfTwoItems(x: abc, y: "\(abcd.d)", operation: k)
                            print(abcd)
                            return abcd
                        }
                    }
                }

                
            }
        }
        print("There is no answer")
    return "nothing"
    }
    
    func twentyFour(a: Double, b: Double, c: Double, d: Double) -> [ABCD] {
        var permutation = [ABCD]()
        permutation.append(ABCD(a, b, c, d))
        permutation.append(ABCD(a, b, d, c))
        permutation.append(ABCD(a, d, c, b))
        permutation.append(ABCD(a, d, b, c))
        permutation.append(ABCD(a, c, b, d))
        permutation.append(ABCD(a, c, d, b))
        
        permutation.append(ABCD(b, a, c, d))
        permutation.append(ABCD(b, a, c, d))
        permutation.append(ABCD(b, c, d, a))
        permutation.append(ABCD(b, c, a, d))
        permutation.append(ABCD(b, d, c, a))
        permutation.append(ABCD(b, d, a, c))
        
        permutation.append(ABCD(c, a, d, b))
        permutation.append(ABCD(c, a, b, d))
        permutation.append(ABCD(c, d, b, a))
        permutation.append(ABCD(c, d, a, b))
        permutation.append(ABCD(c, b, a, d))
        permutation.append(ABCD(c, b, d, a))
        
        permutation.append(ABCD(d, c, a, b))
        permutation.append(ABCD(d, c, b, a))
        permutation.append(ABCD(d, b, a, c))
        permutation.append(ABCD(d, b, c, a))
        permutation.append(ABCD(d, a, b, c))
        permutation.append(ABCD(d, a, c, b))
        
        return permutation
    }
    
    func testExpressOfTwoItems(){
        
        XCTAssertEqual("(6.0 / 4.0)", expressionOfTwoItems(x: "4.0", y: "6.0", operation: 5))
        XCTAssertEqual("(6.0 - 4.0)", expressionOfTwoItems(x: "4.0", y: "6.0", operation: 3))
        XCTAssertEqual("(4.0 * 6.0)", expressionOfTwoItems(x: "4.0", y: "6.0", operation: 1))
    }
    /**
     
     0: +
     1: *
     2: -
     3: - but reversed
     4: /
     5: / but reversed

     */
    
    func testCalOfTwoItems(){
        
        print(calculationOfTwoItems(itemOne: 5, itemTwo: 8))
    }
    
    func calculationOfTwoItems(itemOne: Double, itemTwo: Double) -> [Double] {
        var result =  [Double]()
        result.append(itemOne + itemTwo)
        result.append(itemOne * itemTwo)
        result.append(itemOne - itemTwo)
        result.append(itemTwo - itemOne)
        result.append(itemOne / itemTwo)
        result.append(itemTwo / itemOne)
        
        return result
    }
    
    func expressionOfTwoItems(x: String, y: String, operation: Int) -> String {
        var result = ""
        
        if operation == 0 {
            result = "(\(x) + \(y))"
            
        } else if operation == 1 {
            
            result = "(\(x) * \(y))"
        } else if operation == 2 {
            
            result = "(\(x) - \(y))"
        } else if operation == 3 {
            
            result = "(\(y) - \(x))"
        } else if operation == 4 {
            
            result = "(\(x) / \(y))"
        } else if operation == 5 {
            
            result = "(\(y) / \(x))"
        }
        
        return result
        // say x is 7, y is 9, "(7 + 9)"
    }
    
    struct ABCD {
        let a: Double
        let b: Double
        let c: Double
        let d: Double
        
        init(_ a: Double, _ b: Double, _ c: Double, _ d: Double) {
            self.a = a
            self.b = b
            self.c = c
            self.d = d
        }
    }
    
//    func testStruct() -> [dimension]{
//
//        var dimensions = dimension(width: 0, lenght: 0)
//
//     dimensions.append(dimension.init(width: <#T##Int#>, lenght: <#T##Int#>))
//
//
//    }
    
    struct dimension {
        var width = 0
        var lenght = 0
        
        init(width: Int, lenght: Int) {
            self.lenght = lenght
            self.width = width
            
        }
    }
    
    func testBasics(){
        
        basics()
    }

    func basics(){
        let three = 3
        let minusthree = -three
        print(minusthree)
    }

    func testLoopStatements(){
        loopStatements()
        
    }

    func loopStatements(){
        var something = 0
        for i in 1...7 {
            for n in 1...8{
                
                if n == 5 {
                    continue
                    
                }
            print(i)
            }
            
            
        }
        
    }
}
