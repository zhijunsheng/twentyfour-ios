//
//  Stack.swift
//  TwentyFour
//
//  Created by Grace Huang on 3/14/21.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import Foundation

struct Stack {
    private var arr: [Int] = []
    private var step: Int = 0
    
    public mutating func push(n: Int) {
        arr.append(n)
        step = step + 1
    }
    public mutating func pop() -> Int {
        step = step - 1
        let save: Int = arr[step]
        arr.remove(at: step)
        
        return save
        
    }
}

