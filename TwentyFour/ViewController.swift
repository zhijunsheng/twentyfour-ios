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
        let a = arc4random() % 11 
        card1Label.text = "\(a)"
    }
}
