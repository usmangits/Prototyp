import UIKit

class StarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var malb: UITextField!
    
    @IBOutlet weak var pwlb: UITextField!
    
    
    @IBAction func anmeldenBttn(_ sender: Any) {
        
        let inhalt = malb.text
        let pass = pwlb.text
        
        if(inhalt == "test" && pass == "test")
        {
        self.performSegue(withIdentifier: "EingabeViewController", sender: self)
        }
        else{
            let alert = UIAlertController(title: "Anmeldung fehlgeschlagen", message: "Benutzername oder Passwort ist falsch!", preferredStyle: .alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    

   
    
}
