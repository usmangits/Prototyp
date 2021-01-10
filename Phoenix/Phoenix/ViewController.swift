import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func NextAvatarView(_ sender: Any) {
        
        self.performSegue(withIdentifier: "AvatarViewController", sender: self)
    }
    
    
    @IBAction func NextBView(_ sender: Any) {
        
        self.performSegue(withIdentifier: "BViewController", sender: self)
    }
    
}

