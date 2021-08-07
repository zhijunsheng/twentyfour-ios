import XCTest
@testable import TwentyFour
class ParsingTests: XCTestCase {
    func testParse() {
        XCTAssertEqual(12, Utils.parse(userInput: "2 3 7 + +"))
        XCTAssertEqual(38, Utils.parse(userInput: "87 43 - 6 -"))
        XCTAssertEqual(24, Utils.parse(userInput: "2 3 4 * *"))
        XCTAssertEqual(5, Utils.parse(userInput: "105 3 ÷ 7 ÷"))
        XCTAssertEqual(10, Utils.parse(userInput: "5 15 9 + 6 - * 9 ÷"))
        XCTAssertEqual(1.0, Utils.parse(userInput: "1 3 ÷ 3 *"))
        // (15 + 9 - 6) * 5 ÷ 9
        // 5 15 9 + 6 - * 9 ÷
        // 1 ÷ 3 * 3
//         1 3 ÷ 3 *
        
        // perfect way is : using a pair of numbers to represent rational number (p, q)  p/q, p and q are ints
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
    }
    // 0.99999999... = 1
    // 0.33333333... * 3 =
//    private struct rat {
//        let p: Int
//        let q: Int
//
//        // 3 ÷ 5
//        // (3, 1) ÷ (5, 1) => (3, 5)
//    }
}
