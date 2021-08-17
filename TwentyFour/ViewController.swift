import UIKit
import AVFoundation

class ViewController: UIViewController {
    var stack = Stack()
    
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    @IBOutlet weak var cardThree: UILabel!
    @IBOutlet weak var cardFour: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var soundPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundFilePath = Bundle.main.path(forResource: "open_game", ofType: "wav")
        let soundURL = URL(fileURLWithPath: soundFilePath!)
        soundPlayer = try? AVAudioPlayer(contentsOf: soundURL)
    }
    @IBAction func buttonTapped(_ sender: Any){
        soundPlayer.play()
        
        let cardOneValue = arc4random() % 10 + 1
        cardOne.text = "\(cardOneValue)"
        
        let cardTwoValue = arc4random() % 10 + 1
        cardTwo.text = "\(cardTwoValue)"
        
        let cardThreeValue = arc4random() % 10 + 1
        cardThree.text = "\(cardThreeValue)"
        
        let cardFourValue = arc4random() % 10 + 1
        cardFour.text = "\(cardFourValue)"
        
        textField.text = ""
    }
    @IBAction func answerCheck(_ sender: Any) {
        if Utils.parse(userInput: textField.text!).p == 24 {
            if Utils.isCheating(userInput: textField.text!, card1: cardOne.text!, card2: cardTwo.text!, card3: cardThree.text!, card4: cardFour.text!) {
                label.text = "STOP CHEATING!"
            }
            label.text = "✅"
        }else{
            label.text = "❌"
        }
    }
}
