import Foundation
struct Rational {
    var p: Int
    let q: Int
    func add(rat: Rational) -> Rational {
        return Utils.add(r1: self, r2: rat)
    }
    func minus(rat: Rational) -> Rational {
        return Utils.minus(r1: self, r2: rat)
    }
    func times(rat: Rational) -> Rational {
        return Utils.times(r1: self, r2: rat)
    }
    func divide(rat: Rational) -> Rational {
        return Utils.divide(r1: self, r2: rat)
    }
}
