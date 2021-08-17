import Foundation
struct Utils {
    static func parse(userInput: String) -> Rational {
        let input = userInput.components(separatedBy: " ")
        var s = Stack()
        for ios in input {
            if ios == "+" {
                s.push(number: s.pop().add(rat: s.pop()))
            }else if ios == "-" {
                let i1 = s.pop()
                s.push(number: s.pop().minus(rat: i1))
            }else if ios == "*" {
                s.push(number: s.pop().times(rat: s.pop()))
            }else if ios == "÷" {
                let i2 = s.pop()
                s.push(number: s.pop().divide(rat: i2))
            }else{
                s.push(number: Rational(p: Int(ios)!, q: 1))
            }
        }
        return s.pop()
    }
    static func isCheating(userInput: String, card1: String, card2: String, card3: String, card4: String) -> Bool {
        let input = userInput.components(separatedBy: " ")
        var intArr: [String] = []
        let card = [card1, card2, card3, card4].sorted()
        for ios in input {
            if ios == "1" || ios == "2" || ios == "3" || ios == "4" || ios == "5"
            || ios == "6" || ios == "7" || ios == "8" || ios == "9" || ios == "10" {
                intArr.append(ios)
            }
        }
        if intArr.sorted() == card {
            return false
        }
        return true
    }
    static func lcm(q1: Int, q2: Int) -> Int {
        for i in 1...10000 {
            if i % q1 == 0 && i % q2 == 0 {
                return i
            }
        }
        return 0
    }
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
    }
    static func times(r1: Rational, r2: Rational) -> Rational {
        return updateRat(rat: Rational(p: r1.p * r2.p, q: r1.q * r2.q))
    }
    static func divide(r1: Rational, r2: Rational) -> Rational {
        return times(r1: r1, r2: Rational(p: r2.q, q: r2.p))
    }
}
