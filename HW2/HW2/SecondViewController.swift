//
//  SecondViewController.swift
//  HW2
//
//  Created by Амина Газизова on 02.07.2024.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var hobby: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var username_tittle: UILabel!
    @IBOutlet weak var profile: UILabel!
    @IBOutlet weak var pic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func setup(usernames: String) {
        username.text = usernames
    }
    func data(ages: String, hobbys: String, emails: String) {
        age.text = ages
        hobby.text = hobbys
        email.text = emails
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
