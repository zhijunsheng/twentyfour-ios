import Foundation
struct Stack {
    var arr : [Int] = []
    
    // [____ 4, 5, 9] expensive
    // [4, 5, 9, _____] very cheap
    
    mutating func push(number: Int) {
        arr.append(number)
    }
    mutating func pop() -> Int {
        return arr.removeLast()
    }
    // is there a different way to check if arr is empty?
    func isEmpty() -> Bool {
        return arr.count == 0
    }
}
