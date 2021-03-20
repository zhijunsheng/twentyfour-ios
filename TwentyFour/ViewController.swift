import UIKit
import AVFoundation

class ViewController: UIViewController {
    var s = Stack()
    
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
    }
    // It's a lcb
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
    }
}
