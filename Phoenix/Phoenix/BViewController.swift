import UIKit

//Globale Variablen deklartion
struct MyVariables {
    static var gloErg:Float = 1.23432
    static var taeglichePkt:Int = 0
    static var shop:Int = 0
    static var coins:Int = 20
}

class BViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var heightText: UITextField!
    
    @IBOutlet weak var weightText: UITextField!
    
    
    @IBOutlet weak var ergBL: UILabel!
    
    
    @IBOutlet weak var infoBL: UILabel!
    
    
    @IBAction func calcBtt(_ sender: UIButton) {
        let height = (heightText.text! as NSString).floatValue
        let weight = (weightText.text! as NSString).floatValue
        
        let heightInCM = height/100
        let height2 = heightInCM * heightInCM
        let finalErg = weight/height2
        
        ergBL.text = "BMI:\(finalErg)"
        
        //Ergebnis in die Globale Variable packen
        MyVariables.gloErg = finalErg
        
        if finalErg < 18.5 {
            infoBL.text = "Du bist untergewichtig"
        }else if finalErg > 18.5 && finalErg < 25 {
            infoBL.text = "Dein Gewicht ist normal"
        }else if finalErg > 25 && finalErg < 30 {
            infoBL.text = "Du bist Uebergewichtig"
        }else if finalErg > 30 {
            infoBL.text = "Du bist fettleibig"
        }
    }
    
    
}
