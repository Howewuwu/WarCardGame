

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightimage: UIImageView!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
 
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func dealButton(_ sender: Any) {
        let leftNu = Int.random(in: 2...14)
        let rightNu = Int.random(in: 2...14)
        leftImage.image = UIImage(named: "card\(leftNu)")
        rightimage.image = UIImage(named: "card\(rightNu)")
        
        
        if leftNu > rightNu {
            
            playerScore += 1
            playerLabel.text = String(playerScore)
            
        } else if  leftNu < rightNu{
            
            cpuScore += 1
            cpuLabel.text = String(cpuScore)
            
        } else {
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    

}

