import UIKit

class AvatarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var andereBl: UILabel!
    
    @IBOutlet weak var Ims: UIImageView!
    @IBOutlet weak var ImsHinten: UIImageView!
    @IBOutlet weak var ImsSeite: UIImageView!
    
    @IBAction func aktBTTN(_ sender: UIButton) {
        
        let aktualisieren = MyVariables.gloErg
        andereBl.text = "BMI:\(aktualisieren)"
        
        if aktualisieren < 18.5 {
            Ims.image = UIImage(named: "vorneDuennM")
            ImsHinten.image = UIImage(named: "hintenDuennM")
            ImsSeite.image = UIImage(named: "seiteDuennM")
            
        }else if aktualisieren > 18.5 && aktualisieren < 25 {
            Ims.image = UIImage(named: "vorneMuskelM")
            ImsHinten.image = UIImage(named: "hintenMuskelM")
            ImsSeite.image = UIImage(named: "seiteMuskelM")
           
        }else if aktualisieren > 25 {
            Ims.image = UIImage(named: "vorne")
            ImsHinten.image = UIImage(named: "hinten")
            ImsSeite.image = UIImage(named: "seite")
        }
    }
    
}
