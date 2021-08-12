import Foundation
struct Rational {
    var p: Int
    let q: Int
    
    
    func add(rat: Rational) -> Rational {
        return Utils.add(r1: rat, r2: self)
    }
    func minus(rat: Rational) -> Rational {
        return Utils.minus(r1: self, r2: rat)
    }
}

/*
 
 let r1 = R...
 let r2 = R...
 let sum = r1.add(rat: r2)
 
 Rational(...).add(rat: Rational(..)) => sum, r3
 
 r1: p = 3, q = 5
 r2: p = 1, q = 5
 
 r1 + r2: p = 4, q = 5
 
 9/15 = 3/5
 
 (p: 3, q: 7) + (p: 2, q: 5)
 we need to find out LCM Least Common Multiple of 7 and 5
 
 */
