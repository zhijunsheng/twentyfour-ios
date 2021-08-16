//
//  Stack.swift
//  TwentyFour
//
//  Created by Lambert Lin on 2021/7/26.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import Foundation

struct Stack {
    var arr:[Int] = []
    
    mutating func push(a: Int) {
        arr.append(a)
    }
    
    mutating func pop() -> Int {
        return arr.removeLast()
    }
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }    
}
