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
    static func gcd(p: Int, q: Int) -> Int {
        /*
         585 = 13 * 45
         936 = 13 * 72
         936 ÷ 585 = 1 ...... 351
         585 ÷ 351 = 1 ...... 234
         351 ÷ 234 = 1 ...... 117
         234 ÷ 117 = 2 ...... 0
         
         a ÷ (b) = c ...... d
         
         n / d = q ...... r
         
         p = 585, q = 936
         r1 = q % p = 936 % 585 = 351
         r2 = p % r1 = 585 % 351 = 234
         r3 = r1 % r2 = 351 % 234 = 117
         r4 = r2 % r3 = 234 % 117 = 0
         
         */
        let r1 = max(p, q) % min(p, q)
        if r1 == 0 {
            return min(p, q)
        }
        let r2 = min(p, q) % r1
        if r2 == 0 {
            return r1
        }
        let r3 = r1 % r2
        if r3 == 0 {
            return r2
        }
        let r4 = r2 % r3
        if r4 == 0 {
            return r3
        }
        return 1
    }
}
