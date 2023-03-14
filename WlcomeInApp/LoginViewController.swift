//
//  ViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension UIViewController {
    private func showForgotUserNameAlert(
        with title: String?,
        and message: String?
    ) {
        let alert = UIAlertController(title: "Oops!", message: "Your username is User", preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAlert)
    }
    
    private func showForgotPasswordAlert(
        with title: String?,
        and message: String?
    ) {
        let alert = UIAlertController(title: "Oops!", message: "Your password is Password", preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAlert)

    }
}
