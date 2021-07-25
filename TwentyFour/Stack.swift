import Foundation

struct Stack {
    private var arrA: [Int] = []
    
    mutating func push(n: Int) {
        arrA.append(n)
    }
    
    mutating func pop() -> Int {
        return arrA.removeLast()
    }
    
    func isEmpty() -> Bool {
        return arrA.count == 0
    }
}
