import XCTest

class LoopTests: XCTestCase {
    
    /*
 
     3
     4
     5
     6
     7
     
    */
    func testPrint2() {
              print("3")
              print("4")
              print("5")
              print("6")
              print("7")
        }
        
    
    
    func printHello() {
        print("hello Hal")
        print("Uncle")
    }
    
    func testPrint() {
        print("hello")
        
        let a = 3
        print("a = \(a)")
        
        let b = 20
        print("b = \(b)")
        
//        let c = a + b
        print("a + b = \(a + b)")
    }
}
