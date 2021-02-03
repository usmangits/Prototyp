import UIKit

class StarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func anmeldenBttn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "EingabeViewController", sender: self)
    }
    
    
}
