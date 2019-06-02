import UIKit

class textViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
  
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

    @IBAction func didClick(_ sender: Any) {
        let inputValue = textField.text
        performSegue(withIdentifier: "toNext", sender: inputValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nextVC = segue.destination as! ViewController
            nextVC.message = sender as! String
        }
    }
    
}
