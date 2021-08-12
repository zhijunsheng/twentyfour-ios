import Foundation
struct Utils {
    static func parse(userInput: String) -> Double {
        let input = userInput.components(separatedBy: " ")
        var s = Stack()
        for ios in input {
            if ios == "+" {
                s.push(number: s.pop() + s.pop())
            }else if ios == "-" {
                let i1 = s.pop()
                s.push(number: s.pop() - i1)
            }else if ios == "*" {
                s.push(number: s.pop() * s.pop())
            }else if ios == "÷" {
                let i2 = s.pop()
                s.push(number: s.pop() / i2)
            }else{
                s.push(number: Double(ios)!)
            }
        }
        return s.pop()
    }
    static func lcm(q1: Int, q2: Int) -> Int {
        for i in 1...10000 {
            if i % q1 == 0 && i % q2 == 0 {
                return i
            }
        }
        return 0
    }
    
    /*
     We are not talking about arithmatics of fractions.
     
     gcd is just gcd. It has nothing to do with the above.
     
     The greatest common divisor of 0 and 12 is NOT 1. It is 12.
     
     p = 0, q ≠ 0
     
     q = 0, p ≠ 0
     
     p = 0, q = 0, gcd is not defined, throws
     */
    static func gcd(p: Int, q: Int) -> Int {
        if p == 0 {
            return q
        }else if q == 0 {
            return p
        }
        var a = p
        var b = q
        var r = a % b
        while r != 0 {
            a = b
            b = r
            r = a % b
        }
        return b
    }
    
    static func updateRat(rat: Rational) -> Rational {
        let pq = gcd(p: rat.p, q: rat.q)
        return Rational(p: rat.p / pq, q: rat.q / pq)
    }
    static func add(r1: Rational, r2: Rational) -> Rational {
        let q = lcm(q1: r1.q, q2: r2.q)
        let p1 = r1.p * q / r1.q
        let p2 = r2.p * q / r2.q
        let p = p1 + p2
        return updateRat(rat: Rational(p: p, q: q))
    }
    static func minus(r1: Rational, r2: Rational) -> Rational {
        let q = lcm(q1: r1.q, q2: r2.q)
        
        let p1 = r1.p * q / r1.q
        let p2 = r2.p * q / r2.q
        let p = p1 - p2
        return updateRat(rat: Rational(p: p, q: q))
        /*   p q
         r1: 1/2
         r2: 1/3
         q: 6
         p1: 3
         p2: 2
         p = 1
         return: 1/6
         */
    }
}
