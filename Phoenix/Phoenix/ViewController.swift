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
    @IBOutlet weak var coinsLabel: UILabel!
    
    
    @IBAction func aktibt(_ sender: UIButton) {
        if (MyVariables.shop == 0) {
            imagVi.image = UIImage(named: "vorneDuennM")
        }
        else if (MyVariables.shop == 1) {
            imagVi.image = UIImage(named: "hutGanz")
        }
        else if (MyVariables.shop == 2) {
            imagVi.image = UIImage(named: "schuheGanz")
        }
       else if (MyVariables.shop == 3) {
        imagVi.image = UIImage(named: "hutUNDschuhe")
    }
        
        tpLabel.text = "WWP: \(MyVariables.taeglichePkt)"
        coinsLabel.text = "PC: \(MyVariables.coins)"
        
    }
    
    
    @IBAction func essenbt(_ sender: Any) {
        self.performSegue(withIdentifier: "EssenViewController", sender: self)
    }
    
    
    
    @IBAction func trainingbt(_ sender: Any) {
        self.performSegue(withIdentifier: "TrainingViewController", sender: self)
    }
    
    @IBAction func shopbt(_ sender: Any) {
        self.performSegue(withIdentifier: "ShopViewController", sender: self)
    }
    
    @IBAction func challengebt(_ sender: Any) {
        self.performSegue(withIdentifier: "ChallengeViewController", sender: self)
    }
    
}

