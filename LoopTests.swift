import XCTest

class LoopTests: XCTestCase {

    func testLoop() {

//        var a = 0
//        while a < 8 {
//            print("🏵🏵🏵🏵🏵🏵🏵🏵🏆🏆🏆🏆🏆🏆🏆🏆🏆🏆🏆🏆")
//            print("fdkd = \(a)")
//            a = a + 3
//        }
        
        
        
    }
    
    /*
 
     Collatz Conjecture
     
     a = 38
     
     even: next = half of a
     odd: next = 3a + 1
     
     38, 19, 58, 29, 88, 44, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10,
     5 , 16, 8 , 4 , 2 , 1
     
     
     64, 32, 16, 8, 4, 2, 1, 4, 2, 1, 4, 2, 1
     
    */
    func testCollatzConjecture() {
        var coco = arc4random_uniform(411522630)
        while coco < 1234567891 {
            if coco % 2 == 1 {
              coco = coco * 3 + 1
            } else if coco % 2 == 0 {
              coco = coco / 2
            }
            
            print("\(coco)")
            
            if coco == 1 {
                break
            }
        }
        
        print("🏁")
    }
}
