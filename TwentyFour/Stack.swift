import Foundation
struct Stack {
    var arr : [Rational] = []
    mutating func push(number: Rational) {
        arr.append(number)
    }
    mutating func pop() -> Rational {
        return arr.removeLast()
    }
    func isEmpty() -> Bool {
        return arr.count == 0
    }
}
