import XCTest
@testable import TwentyFour
class ParsingTests: XCTestCase {
    func testParse() {
        XCTAssertEqual(12, Utils.parse(userInput: "2 3 7 + +").p)
        XCTAssertEqual(38, Utils.parse(userInput: "87 43 - 6 -").p)
        XCTAssertEqual(24, Utils.parse(userInput: "2 3 4 * *").p)
        XCTAssertEqual(10, Utils.parse(userInput: "5 15 9 + 6 - * 9 ÷").p)
        XCTAssertEqual(1, Utils.parse(userInput: "1 3 ÷ 3 *").p)
        // (15 + 9 - 6) * 5 ÷ 9
        // 5 15 9 + 6 - * 9 ÷
        // 1 ÷ 3 * 3
        //         1 3 ÷ 3 *
        
        // perfect way is : using a pair of numbers to represent rational number (p, q)  p/q, p and q are ints
    }
    func testIsCheating() {
        XCTAssertTrue(Utils.isCheating(userInput: "24", card1: "2", card2: "4", card3: "2", card4: "4"))
        XCTAssertFalse(Utils.isCheating(userInput: "6 7 * 6 + 2 ÷", card1: "6", card2: "2", card3: "7", card4: "6"))
    }
    func testLCM() {
        XCTAssertEqual(35, Utils.lcm(q1: 5, q2: 7))
        XCTAssertEqual(48, Utils.lcm(q1: 24, q2: 16))
    }
    func testGCD() {
        XCTAssertEqual(117, Utils.gcd(p: 585, q: 936))
        XCTAssertEqual(Utils.gcd(p: 105, q: 245), Utils.gcd(p: 385, q: 560))
        XCTAssertEqual(3, Utils.gcd(p: 3, q: 3))
        XCTAssertEqual(1, Utils.gcd(p: 1, q: 7))
        XCTAssertEqual(1, Utils.gcd(p: 37, q: 33331))
        XCTAssertEqual(1, Utils.gcd(p: 64, q: 25))
        XCTAssertEqual(13, Utils.gcd(p: 1053, q: 481))
        XCTAssertEqual(7, Utils.gcd(p: 3094, q: 2513))
        XCTAssertEqual(3094, Utils.gcd(p: 3094, q: 0))
    }
    func testUptateRat() {
        XCTAssertEqual(1, Utils.updateRat(rat: Rational(p: 6, q: 12)).p)
        XCTAssertEqual(2, Utils.updateRat(rat: Rational(p: 6, q: 12)).q)
        
    }
    func testAdd() {
        XCTAssertEqual(5, Utils.add(r1: Rational(p: 1, q: 2), r2: Rational(p: 1, q: 3)).p)
        XCTAssertEqual(6, Utils.add(r1: Rational(p: 1, q: 2), r2: Rational(p: 1, q: 3)).q)
        let r1 = Rational(p: 1, q: 2)
        let r2 = Rational(p: 1, q: 3)
        XCTAssertEqual(5, r1.add(rat: r2).p)
        XCTAssertEqual(6, r2.add(rat: r1).q)
        
        
    }
    func testMinus() {
        let r1 = Rational(p: 1, q: 3)
        let r2 = Rational(p: 1, q: 2)
        XCTAssertEqual(1, r2.minus(rat: r1).p)
        XCTAssertEqual(6, r2.minus(rat: r1).q)
        XCTAssertEqual(0, r2.minus(rat: r2).p)
        
    }
    func testTimes() {
        let r1 = Rational(p: 1, q: 4)
        let r2 = Rational(p: 5, q: 3)
        XCTAssertEqual(5, r1.times(rat: r2).p)
        XCTAssertEqual(12, r1.times(rat: r2).q)
    }
    func testDivide() {
        let r1 = Rational(p: 6, q: 7)
        let r2 = Rational(p: 9, q: 4)
        XCTAssertEqual(8, r1.divide(rat: r2).p)
        XCTAssertEqual(21, r1.divide(rat: r2).q)
    }
}
