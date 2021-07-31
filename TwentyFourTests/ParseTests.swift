
@testable import TwentyFour
import XCTest

class ParseTests: XCTestCase {

    func testAddition() {
        
        
        XCTAssertEqual(5, Utils.parse(st: "2 3 +"))
        XCTAssertEqual(12, Utils.parse(st: "2 3 7 + +"))
//        XCTAssertEqual(5, Utils.parse(st: "2 3 3 4 +")) // ?
        XCTAssertEqual(9, Utils.parse(st: "2 3 + 4 +"))
    }
    
    func testCheating() {
        let nums = [6, 6, 6, 6]
        let cheating = "12 12 +" // how do you guard against it?
        XCTAssertEqual(24, Utils.parse(st: cheating))
    }

    func testSubtraction() {
        
    }
    
    func testDivision() { // "3 * 1 / 3", "1 / 3 * 3"
        XCTAssertEqual(9, Utils.parse(st: "27 3 ÷"))
        XCTAssertEqual(1, Utils.parse(st: "3 1 3 / *"))
    }
    
    func testMixed() {
        
    }
    
    
}
