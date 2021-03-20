import Foundation

struct Stack {
    var arrA: [Int] = []
    var non: Int = 0
    
    mutating func push(n: Int) {
        arrA.insert(n, at: non) // [9, 0, 0, 0, 0]
        non += 1
    }
    
    mutating func pop() -> Int {
        non -= 1
        return arrA[non]
    }
}

// [23, 4, 9],
// 8 - (7 + (7 / 9 + 1))

/*
 
 let a1 = "8 - (7 + (7 / 9 + 1))"
 let a2Arr = a1.componentsSeperated(by: " ")
 a2Arr => ["8", "-", "(", ...]

 */
