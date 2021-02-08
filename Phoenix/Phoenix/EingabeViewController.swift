import UIKit



class EingabeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var geschlechtOutlet: UISegmentedControl!
    
    @IBOutlet weak var alterOutlet: UITextField!
    
    @IBOutlet weak var gewichtOutlet: UITextField!
    
    @IBOutlet weak var groeßeOutlet: UITextField!
    
    @IBOutlet weak var bewegungOutlet: UISegmentedControl!
    
    @IBOutlet weak var zielOutlet: UISegmentedControl!
    
    @IBOutlet weak var schlafOutlet: UISegmentedControl!
    
    @IBOutlet weak var ergOutlet: UILabel!
    
    
    
    @IBAction func rechBt(_ sender: UIButton) {
        
        let geschlecht = (geschlechtOutlet.selectedSegmentIndex)
        let alter = (alterOutlet.text! as NSString).intValue
        let gewicht = (gewichtOutlet.text! as NSString).integerValue
        let groesse = (groeßeOutlet.text! as NSString).floatValue
        let bewegung = (bewegungOutlet.selectedSegmentIndex)
        let ziel = (zielOutlet.selectedSegmentIndex)
        let schlaf = (schlafOutlet.selectedSegmentIndex)
        
        var punkte = 0
        
        "------------------------------------------------------------------------------------------------"
        if(geschlecht==0)
        {
            punkte = punkte + 15
        }
        else if (geschlecht==1)
        {
            punkte = punkte + 7
        }
        else if (geschlecht==2)
        {
            punkte = punkte + 9
        }
        
        "------------------------------------------------------------------------------------------------"
        if(alter >= 1 && alter <= 20)
        {
            punkte = punkte + 5
        }
        else if (alter >= 21 && alter <= 35)
        {
            punkte = punkte + 4
        }
        else if (alter >= 36 && alter <= 50)
        {
            punkte = punkte + 3
        }
        else if (alter >= 51)
        {
            punkte = punkte + 2
        }
        "------------------------------------------------------------------------------------------------"
        punkte = punkte + gewicht/10
        "------------------------------------------------------------------------------------------------"
        if (groesse >= 1.60)
        {
            punkte = punkte + 2
        }
        else if (groesse < 1.60)
        {
            punkte = punkte + 1
        }
        "------------------------------------------------------------------------------------------------"
        if(bewegung==0)
        {
            punkte = punkte + 0
        }
        else if (bewegung==1)
        {
            punkte = punkte + 2
        }
        else if (bewegung==2)
        {
            punkte = punkte + 4
        }
        else if (bewegung==3)
        {
            punkte = punkte + 6
        }
        "------------------------------------------------------------------------------------------------"
        if(ziel==0)
        {
            punkte = punkte + 4
        }
        else if (ziel==1)
        {
            punkte = punkte + 0
        }
        else if (ziel==2)
        {
            punkte = punkte + 6
        }
        "------------------------------------------------------------------------------------------------"
        if(schlaf==0)
        {
            punkte = punkte - 2
        }
        else if (schlaf==1)
        {
            punkte = punkte + 0
        }
        else if (schlaf==2)
        {
            punkte = punkte + 1
        }
        else if (schlaf==3)
        {
            punkte = punkte + 2
        }
        
        
        ergOutlet.text = "Ihre täglichen Punkte:\(punkte)"
        MyVariables.taeglichePkt = punkte
        
    }
    

    @IBAction func hombt(_ sender: Any) {
        
        self.performSegue(withIdentifier: "ViewController", sender: self)
    }
    
    
}
