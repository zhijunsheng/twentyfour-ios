//
//  Stack.swift
//  TwentyFour
//
//  Created by Peter Shi on 2021-03-12.
//  Copyright © 2021 Bowen Lin. All rights reserved.
//

import Foundation

struct Stack {
    var a: [Double] = [] // "12", "32.0000"
    mutating func push(n: Double) {
        a.append(n)
    }
    mutating func pop() -> Double {
        let n = a[a.count - 1]
        a.remove(at: a.count - 1)
        return n
    }
}
