import UIKit

class EssenViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

 
    @IBAction func wasserBt(_ sender: UIButton) {
        // create the alert
               let alert = UIAlertController(title: "Wasser hinzugefügt", message: "Durch die zufuhr von Wasser haben Sie 0 WW verloren", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func colaBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt - 2
        
        // create the alert
               let alert = UIAlertController(title: "Cola hinzugefügt", message: "Durch die zufuhr von Cola haben Sie 2 WW verloren", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func brotBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt - 2
        
        // create the alert
               let alert = UIAlertController(title: "Brot hinzugefügt", message: "Durch die zufuhr von Brot haben Sie 2 WW verloren", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func doenerBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt - 14
        
        // create the alert
               let alert = UIAlertController(title: "Döner hinzugefügt", message: "Durch die zufuhr von Döner haben Sie 14 WW verloren", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func schokoBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt - 1
        
        // create the alert
               let alert = UIAlertController(title: "Schokolade hinzugefügt", message: "Durch die zufuhr von Schokolade haben Sie 1 WW verloren", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func eisBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt - 2
        
        // create the alert
               let alert = UIAlertController(title: "Eis hinzugefügt", message: "Durch die zufuhr von Eis haben Sie 2 WW verloren", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
}
