import Foundation

struct Stack {
    private var arrA: [Double] = []
    
    mutating func push(n: Double) {
        arrA.append(n)
    }
    
    mutating func pop() -> Double {
        return arrA.removeLast()
    }
    
    func isEmpty() -> Bool {
        return arrA.count == 0
    }
}
