import XCTest
@testable import TwentyFour
class StackTests: XCTestCase {
    func testStack1() {
        var stack = Stack()
        print(stack)
        stack.push(number: 6)
        let six = stack.pop()
        XCTAssertEqual(6, six)
        print(stack)
        
    }
    func testStack2() {
        var stack2 = Stack()
        print(stack2)
        stack2.push(number: 7)
        stack2.push(number: 4)
        XCTAssertEqual(4, stack2.pop())
        XCTAssertEqual(7, stack2.pop())

    }
    func testIsEmpty() {
        var stackEmpty = Stack()
        XCTAssertTrue(stackEmpty.isEmpty())
        stackEmpty.push(number: 8)
        XCTAssertFalse(stackEmpty.isEmpty())
    }
}
