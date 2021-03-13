//
//  Stack.swift
//  TwentyFour
//
//  Created by Felix Lo on 2021-03-11.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import Foundation

struct Stack {
    var arr:[Int] = []
    var top = -1
    
    mutating func push(n: Int) {
        top += 1
        arr.append(n)
    }
    
    mutating func pop() -> Int {
        let x = arr[top]
        arr.remove(at: top)
        top -= 1
        return x
    }
}
