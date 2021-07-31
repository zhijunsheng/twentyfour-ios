

import Foundation

struct Utils {
    static func parse(st: String) -> Double {
        
        var s = Stack()
        
        let arr = st.components(separatedBy: " ")
        for i in 0..<arr.count {
            if String(arr[i]) == "+" {
                s.push(n: s.pop() + s.pop())
            } else if String(arr[i]) == "-" {
                let rmbn = s.pop()
                s.push(n: s.pop() - rmbn)
            } else if String(arr[i]) == "*" {
                s.push(n: s.pop() * s.pop())
            } else if String(arr[i]) == "/" || String(arr[i]) == "÷" {
                let rmbn = s.pop()
                s.push(n: s.pop() / rmbn)
            } else {
                let number: String = String(arr[i])
                let rn: Double = Double(number)!
                
                
                s.push(n: rn)
                
            }
        }
        return s.pop()
    }
    
}
