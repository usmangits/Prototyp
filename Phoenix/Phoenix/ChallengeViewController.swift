import UIKit

class ChallengeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        spinImg.image = UIImage(named: "0")
    }

    
    @IBOutlet weak var spinImg: UIImageView!
    var taeglich = 0
    
    @IBAction func spinbt(_ sender: UIButton) {
       
        let numbers = [2, 4, 5]
        let shuffledNumbers = numbers.sorted { (_, _) -> Bool in arc4random() < arc4random() }
        
       
        
        if (taeglich == 0) {
            
            taeglich = taeglich + 1
            
            if (shuffledNumbers[1] == 2) {
                spinImg.image = UIImage(named: "2")
                MyVariables.coins = MyVariables.coins + 2
            }
            else if(shuffledNumbers[1] == 4)
                {
                spinImg.image = UIImage(named: "4")
                MyVariables.coins = MyVariables.coins + 4
            }
            else if(shuffledNumbers[1] == 5)
                {
                spinImg.image = UIImage(named: "5")
                MyVariables.coins = MyVariables.coins + 5
            }
           
        }
        else{
            let alert = UIAlertController(title: "Täglich nur 1 Mal!", message: "Du hast heute schon einen spin gemacht, probiere es morgen wieder", preferredStyle: .alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        
     
    }
}
