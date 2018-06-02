
import UIKit

class ViewController: UIViewController,
    UITableViewDataSource, UITableViewDelegate {
    
    let foods = ["シシグ","タホ","ルンピア"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self
        TableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBOutlet weak var TableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "choices", for: indexPath)
        
            cell.textLabel!.text = foods[indexPath.row]

        return cell
        
    }
    

}

