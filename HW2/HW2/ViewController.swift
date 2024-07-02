import UIKit

var users = [(login: "amina", password: "191919", agess: "18", hobbyss: "tennis", emailss: "aminagazizova8@gmail.com"), (login: "amalia", password: "171717", agess: "18", hobbyss: "ballet", emailss: "amaliakremen17@mail.ru"), (login: "liza", password: "121212", agess: "19", hobbyss: "shopping", emailss: "elizavetanovozhilova12@gmail.com")]

class ViewController: UIViewController {
    
    @IBOutlet weak var check: UILabel!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//        sign_in.backgroundColor = .darkGray
    }
    
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning()
    }
    
    @IBAction func button(_ sender: Any) {
        var isAuthenticated = false
        var userAge: String?
        var userHobby: String?
        var userEmail: String?

        for user in users {
            if login.text == user.login && password.text == user.password {
                isAuthenticated = true
                userAge = user.agess
                userHobby = user.hobbyss
                userEmail = user.emailss
                break
            }
    }

        if isAuthenticated, let agess = userAge, let hobbyss = userHobby, let emailss =  userEmail {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            //auth.text = "loading"
            check.textColor = .systemPink
            check.textAlignment = .center
            secondController.loadViewIfNeeded()
            //secondController.view.backgroundColor = .systemGray
            secondController.setup(usernames: login.text!)
            secondController.data(ages: agess, hobbys: hobbyss, emails: emailss)
            navigationController?.pushViewController(secondController, animated: true)
        } else {
            check.text = "Wrong username or password"
            check.textColor = .red
        }
    }
}
