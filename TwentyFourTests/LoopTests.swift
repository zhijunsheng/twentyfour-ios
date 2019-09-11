import XCTest

class LoopTests: XCTestCase {
    

    func testLoop() {
        for i in 0..<5 {
            print("\(i * 3 + 10)")
        }
    }
}
