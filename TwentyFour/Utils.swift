//
//  Utils.swift
//  TwentyFour
//
//  Created by Peter Shi on 2021-08-06.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import Foundation

struct Utils {
    
    static func gcd(n1: Int, n2: Int) -> Int {
        var n = 1
        var r = -5
        var one = n1
        var two = n2
        if n1 == 0 || n2 == 0 {
            return (n1 > n2 ? n1 : n2)
        }
        while two != 0 {
            n = two
            r = one % two
            one = two
            two = r
        }
        return n
    }
    
    //
    // cards: [String] 1 2 3 4
    // expr: [String] "12 12 +"
    // cards.contains(expr[i])
    // expr.contains(cards[i])
    static func isCheating(cards: [String], input: String) -> Bool {
        var inp: [String] = []
        for i in input.components(separatedBy: " ") {
            if !["+", "-", "*", "/"].contains(i) { // ["+", "-"].contains()
                inp.append(i)
            }
        }
        if inp.sorted() == cards.sorted() {
            return false
        } else {
            return true
        }
    }
    
    static func parse(postfix: String) -> Double {
        var n: Stack = Stack()
        for i in postfix.components(separatedBy: " ") {
            if i == "+" {
                n.push(n: n.pop() + n.pop())
            } else if i == "-" {
                n.push(n: -n.pop() + n.pop())
            } else if i == "*" {
                n.push(n: n.pop() * n.pop())
            } else if i == "/" {
                n.push(n: 1 / (n.pop() / n.pop()))
            } else {
                n.push(n: Double(i)!)
            }
        }
        return n.pop()
    }
}
