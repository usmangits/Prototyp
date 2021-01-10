import UIKit

class AvatarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var andereBl: UILabel!
    
    
    
    @IBAction func aktBTTN(_ sender: UIButton) {
        
        let aktualisieren = MyVariables.gloErg
        andereBl.text = "BMI:\(aktualisieren)"
    }
    
}
