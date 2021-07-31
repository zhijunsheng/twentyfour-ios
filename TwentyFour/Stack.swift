//
//  Stack.swift
//  TwentyFour
//
//  Created by Harry Shen on 7/31/21.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import Foundation
struct Stack {
    
    var arr: [Int] = []
    
    mutating func push(_ num : Int) {
        arr.append(num)
    }
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }
    
    mutating func pop() -> Int {
        return arr.removeLast()
    }
}
