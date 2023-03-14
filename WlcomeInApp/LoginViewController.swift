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

    @IBAction func forgotPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is Password")
    }
    @IBAction func logInButtonTapped() {
        if usernameTextField.text != "User" || passwordTextField.text != "Password" {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your username is User")
    }
}


//MARK: Alert method

extension LoginViewController {
    
     private func showAlert(
        with title: String?,
        and message: String?
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAlert)
    }
    
}
