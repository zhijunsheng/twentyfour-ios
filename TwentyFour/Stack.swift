import Foundation
struct Stack {
    var arr : [Double] = []
    mutating func push(number: Double) {
        arr.append(number)
    }
    mutating func pop() -> Double {
        return arr.removeLast()
    }
    func isEmpty() -> Bool {
        return arr.count == 0
    }
}

/*
 
 After we implement Rational
 
 arr: [Rational]
 
 0.3333... = Rational(p: 1, q: 3)
 
 */
