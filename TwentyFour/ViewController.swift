import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card2Label: UILabel!
    @IBOutlet weak var card3Label: UILabel!
    @IBOutlet weak var card4Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func change(_ sender: Any) {
        let a = arc4random() % 10 + 1
        let b = arc4random() % 10 + 1
        let c = arc4random() % 10 + 1
        let d = arc4random() % 10 + 1
        card1Label.text = "\(a)"
        card2Label.text = "\(b)"
        card3Label.text = "\(c)"
        card4Label.text = "\(d)"
    }
}
