import UIKit

class ShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        hutIm.image = UIImage(named: "hut")
        schuhIm.image = UIImage(named: "schuhe")
        anzugIm.image = UIImage(named: "anzug")
    }


    @IBOutlet weak var hutIm: UIImageView!
    
    
    @IBOutlet weak var schuhIm: UIImageView!
    
    
    @IBOutlet weak var anzugIm: UIImageView!
    
    
    @IBAction func hutKaufen(_ sender: UIButton) {
        if (MyVariables.shop == 0) {
            MyVariables.shop = 1
        }
        else if (MyVariables.shop == 2){
            MyVariables.shop = 3
        }
        
        let alert = UIAlertController(title: "Hut hinzugefügt", message: "Durch den Kauf von einem Hut hast du .. Coins verloren", preferredStyle: .alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func schuheKaufen(_ sender: UIButton) {
        if (MyVariables.shop == 0) {
            MyVariables.shop = 2
        }
        else if (MyVariables.shop == 1){
            MyVariables.shop = 3
        }
    }
    
    @IBAction func anzugKaufen(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Nicht genug Coins!", message: "Für den James Bond Anzug fehlen dir noch Coins. Spar weiter!", preferredStyle: .alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}
