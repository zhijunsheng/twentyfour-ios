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
        
        let numberOne = arc4random() % 10 + 1
        cardOne.text = "\(numberOne)"
        let numberTwo = arc4random()  % 10 + 1
        cardTwo.text = "\(numberTwo)"
        let numberThree = arc4random()  % 10 + 1
        cardThree.text = "\(numberThree)"
        let numberFour = arc4random()  % 10 + 1
        cardFour .text = "\(numberFour)"
        
        checkSwitch.isOn = false
        dealButton.isEnabled = false
    }
    
    @IBAction func checkMath(_ sender: UISwitch) {
        if sender.isOn {
            dealButton.isEnabled = true
        }
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
        mthStyle.text = ""
    }
    
    @IBAction func checkStyle(_ sender: Any) {
        let st: String = mthStyle.text!
        let arr: [ArraySlice<Character>] = st.split(separator: " ")
        for i in 0..<arr.count {
            if String(arr[i]) == "+" {
                s.push(n: s.pop() + s.pop())
            } else if String(arr[i]) == "-" {
                let rmbn = s.pop()
                s.push(n: s.pop() - rmbn)
            } else if String(arr[i]) == "*" {
                s.push(n: s.pop() * s.pop())
            } else if String(arr[i]) == "/" || String(arr[i]) == "÷" {
                s.push(n: s.pop() / s.pop())
            } else {
                let number: String = String(arr[i])
                let rn: Double = Double(number)!
                
                s.push(n: rn)
            }
        }
        
        mthStyle.text = "\(st) = \(s.pop())"
    }
}
