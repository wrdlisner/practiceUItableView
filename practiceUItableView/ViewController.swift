
import UIKit

var foods = ["シシグ/フィリピン料理といえばこれ！","タホ/地元の人に愛されるローカルスイーツ！","ルンピア/日本で言う春巻き！おつまつにピッタリかも？"]

class ViewController: UIViewController,
    UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self
        TableView.dataSource = self
        
        let headerCell = TableView.dequeueReusableCell(withIdentifier: "header")!
        TableView.tableFooterView = headerCell.contentView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBOutlet weak var TableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "choices")
        
        let details = foods[indexPath.row].components(separatedBy: "/")
        
            cell.textLabel!.text = foods[indexPath.row]
            cell.backgroundColor = UIColor.rgb(r: 255, g: 255, b: 245, alpha: 1)
            cell.textLabel?.textColor = UIColor.rgb(r: 241, g: 157, b: 75, alpha: 1)
        
        cell.textLabel?.text = details[0]
        cell.detailTextLabel?.text = details[1]
        print(details[0])
        print(details[1])

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    var selectedIndex:Int!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "segue1", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        foods[0] = "シシグ"
        foods[1] = "タホ"
        foods[2] = "ルンピア"
        
        let move:DetailViewController = segue.destination as!
            DetailViewController
        
        move.passedIndex = selectedIndex
        
        
        
    }
    

}

