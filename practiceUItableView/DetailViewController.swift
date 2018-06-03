import UIKit

let images = [UIImage(named: "sisig"),UIImage(named: "taho"),UIImage(named:"lunpia")]
let howto = ["セブンイレブンで買う","路上のタホ売りおじさんから買う","春巻き買って温める"]

class DetailViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var foodPicture: UIImageView!
    
    @IBOutlet weak var foodHowto: UITextView!
    
    var passedIndex:Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        name.text = foods[passedIndex!]
        
        if passedIndex == 0 {
            foodPicture.image = UIImage(named: "sisig")
            foodHowto.text = howto[0]
            
        } else if (passedIndex == 1) {
            foodPicture.image = UIImage(named: "taho")
            foodHowto.text = howto[1]

        } else {
            foodPicture.image = UIImage(named: "lunpia")
            foodHowto.text = howto[2]
        }
        
    }
    
    @IBAction func jump(_ sender: UIButton) {
        
        let url = URL(string: "https://goo.gl/hdbwhu")
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!)
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}
