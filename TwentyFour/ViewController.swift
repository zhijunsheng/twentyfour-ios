import UIKit
import AVFoundation

class ViewController: UIViewController {
    var s = Stack()
    
    @IBOutlet weak var mthStyle: UITextField!
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    @IBOutlet weak var cardThree: UILabel!
    @IBOutlet weak var cardFour: UILabel!
    @IBOutlet weak var dealButton: UIButton!
    @IBOutlet weak var checkSwitch: UISwitch!
    
    var soundPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        let soundPath = Bundle.main.path(forResource: "open_game", ofType: "wav")
        let url = URL(fileURLWithPath: soundPath!)
        soundPlayer = try? AVAudioPlayer(contentsOf: url)
        dealButton.isEnabled = false
        checkSwitch.isOn = false
        print(s.isEmpty())
        s.push(n: 9)
        s.push(n: 8)
        s.push(n: 7)
        s.push(n: 6)
        s.push(n: 5)
        print(s.pop())
        print(s.pop())
        print(s.pop())
        print(s.pop())
        print(s.pop())
        print(s.isEmpty())
  //      print(s.arrA[0])
    }
    // It's a lcb
    @IBAction func checkMath(_ sender: UISwitch) {
        if sender.isOn {
            dealButton.isEnabled = true
        }
        
        guard let st: String = mthStyle.text else {
            return

        }
        
        print(st)
        // "3 5 +" => ["3", "5", "+"]
        // algorithm to parse/evaluate postfix expression:
        // 3 5 1 + -
        // push 3, push 5, when we meet +, pop pop and push sum back s: 8, push 1,
        /*
         
         |_7_
         |___
         |___
         
         
         */
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let numberOne = arc4random() % 10 + 1
        cardOne.text = "\(numberOne)"
        let numberTwo = arc4random()  % 10 + 1
        cardTwo.text = "\(numberTwo)"
        let numberThree = arc4random()  % 10 + 1
        cardThree.text = "\(numberThree)"
        let numberFour = arc4random()  % 10 + 1
        cardFour .text = "\(numberFour)"
        
        soundPlayer.play()
        
        checkSwitch.isOn = false
        dealButton.isEnabled = false
    }//9 * 3 - 8 + 5
    // 9 3 * 8 - 5 +
    @IBAction func checkStyle(_ sender: Any) {
        
 //       print("hello, world")
        let st: String = mthStyle.text!
        let arr: [ArraySlice<Character>] = st.split(separator: " ")
        for i in 0..<arr.count {
            if String(arr[i]) == "+" {
                s.push(n: s.pop() + s.pop())
            } else if String(arr[i]) == "-" {
                s.push(n: s.pop() - s.pop())
            } else if String(arr[i]) == "*" {
                s.push(n: s.pop() * s.pop())
            } else if String(arr[i]) == "/" || String(arr[i]) == "÷" {
                s.push(n: s.pop() / s.pop())
            } else {
 //               s.push(n: Int(arr[i]))
            }
        }
    }
}//6 2 7 2
/*
 6*7/2
 6*2+7
 
 we have operands and operators ("+", "-")
 6 7 + 2 * 2 -
 -----------------------------
 |24
 -----------------------------
 when we meet "6", we can do nothing
 then we meet "7", still nothing to do
 but when we meet an operator "+", we do have something to do
 pop up 7
 pop up 6
 evaluate 6 + 7 to get 13
 next step is critical, but what is it?
 push 13
 push 2
 pop 2 & 13
 t 13 2 arr1
 push 2
 pop 2 & 26
 m 26 2 arr1
 write down(push) 24
 
 stack: FILO
 ---------------------
 |24
 ---------------------
 
 9 3 * 8 - 5 +
 
 
 
 
 6  2   2   7   +   *   +
 [24]
 
 ()[]{}||,.
 */
