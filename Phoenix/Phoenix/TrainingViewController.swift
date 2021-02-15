import UIKit

class TrainingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func fussballBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt + 4
        
        // create the alert
               let alert = UIAlertController(title: "Fußball hinzugefügt", message: "Durch die Trainingseinheit 'Fußball' haben Sie 4 WWP dazugewonnen", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func badmintonBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt + 3
        
        // create the alert
               let alert = UIAlertController(title: "Badminton hinzugefügt", message: "Durch die Trainingseinheit 'Badminton' haben Sie 3 WWP dazugewonnen", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func basketballBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt + 4
        
        // create the alert
               let alert = UIAlertController(title: "Basketball hinzugefügt", message: "Durch die Trainingseinheit 'Basketball' haben Sie 4 WWP dazugewonnen", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func joggenBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt + 4
        
        // create the alert
               let alert = UIAlertController(title: "Joggen hinzugefügt", message: "Durch die Trainingseinheit 'Joggen' haben Sie 4 WWP dazugewonnen", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func spazierenBt(_ sender: UIButton) {
        
        MyVariables.taeglichePkt = MyVariables.taeglichePkt + 3
        
        // create the alert
               let alert = UIAlertController(title: "Spazieren hinzugefügt", message: "Durch die Trainingseinheit 'Spazieren' haben Sie 3 WWP dazugewonnen", preferredStyle: .alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
    
}
