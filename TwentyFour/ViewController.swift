import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    @IBOutlet weak var cardThree: UILabel!
    @IBOutlet weak var cardFour: UILabel!
    
    var soundPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        let soundPath = Bundle.main.path(forResource: "open_game", ofType: "wav")
        let url = URL(fileURLWithPath: soundPath!)
        soundPlayer = try? AVAudioPlayer(contentsOf: url)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        let numberOne = arc4random() % 10 + 1
        cardOne.text = "\(numberOne)"
        let numberTwo = arc4random()  % 10 + 1
        cardTwo.text = "\(numberTwo)"
        let numberThree = arc4random()  % 10 + 1
        cardThree.text = "\(numberThree)"
        let numberFour = arc4random()  % 10 + 1
        cardFour .text = "\(numberFour)"
        
        
        soundPlayer.play()
        
        
        
    }

    
}




