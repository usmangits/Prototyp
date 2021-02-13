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
    
    
    @IBOutlet weak var imagVi: UIImageView!
    @IBOutlet weak var tpLabel: UILabel!
    
    
    @IBAction func aktibt(_ sender: UIButton) {
        imagVi.image = UIImage(named: "vorneDuennM")
        tpLabel.text = "Täglichen Punkte:\(MyVariables.taeglichePkt)"
    }
    
    
    @IBAction func essenbt(_ sender: Any) {
        self.performSegue(withIdentifier: "EssenViewController", sender: self)
    }
    
    
    
    
}

