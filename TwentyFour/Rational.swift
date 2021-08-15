//
//  Rational.swift
//  TwentyFour
//
//  Created by Peter Shi on 2021-08-08.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import Foundation

struct Rational { // 6/9 p/q, 0.5: p=1, q=2, 0.25:
    let p: Int
    let q: Int
    
    /*
     
     16/24 =>
     
     */
    func simplify() -> Rational { // (4, 6) => (2, 3)
        return Rational(p: p / Utils.gcd(n1: p, n2: q), q: q / Utils.gcd(n1: p, n2: q))
    }
    
    func add(r1: Rational) -> Rational {
        return Rational(p: r1.q * p, q: r1.p * q).simplify()
    }
    
    func sub(r1: Rational) -> Rational {
        return Rational(p: r1.p * p, q: r1.q * q).simplify()
    }
    
    func mul(r1: Rational) -> Rational {
        return Rational(p: r1.p * p, q: r1.q * q).simplify()
    }
    
    func div(r1: Rational) -> Rational {
        return Rational(p: r1.p / p, q: r1.q / q).simplify()
    }
    
    /*
     12, 8
     8, 4
     4, 0
     
     18, 24
     24, 18
     18, 6
     6, 0
     
     */
    func gcd(a: Int, b: Int) -> Int {
        
        var c = 18, d = 24
        while d != 0 {
            (c, d) = (d, c % d)
        }
        // return c
        
        
        return  b == 0 ? a : gcd(a: b, b: a % b)
    }
    /*
     
     1/2 p=1 q=2
     1/3 p=1 q=3
     1/2 + 1/3 => p=5 q=6
     
     add, sub, mul, div
     
     let r1 = ...
     let r2 = ...
     let sum = r1.add(...: r2)
     Utils.add(r1, r2)
     */
}
