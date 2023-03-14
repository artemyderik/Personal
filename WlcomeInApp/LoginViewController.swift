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

    @IBAction func forgotPasswordButtonTapped() {
        showForgotPasswordAlert(with: "Oops!", and: "Your password is Password")
    }
    @IBAction func forgotUserNameButtonTapped() {
        showForgotUserNameAlert(with: "Oops!", and: "Your username is User")
    }
}


//MARK: Username & Password Alerts

extension LoginViewController {
     private func showForgotUserNameAlert(
        with title: String?,
        and message: String?
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAlert)
    }
    
     private func showForgotPasswordAlert(
        with title: String?,
        and message: String?
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAlert)

    }
}
