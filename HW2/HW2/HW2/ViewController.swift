import UIKit
let users = [(login: "123", password: "123"), (login: "111", password: "111")]


class ViewController: UIViewController {
    @IBOutlet weak var check: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        check.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sign_in(_ sender: Any) {
        for i in 0..<users.count {
            if login.text == users[i].login && password.text == users[i].password {
                check.text = ""
                break
            } else {
                check.text = "Пароль или Логин введены неверно. Повторите попытку."
                login.text = ""
                password.text = ""
            }
        }
    }
}
