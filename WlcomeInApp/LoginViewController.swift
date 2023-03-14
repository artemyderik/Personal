//
//  ViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    //MARK: Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.usernameAgent = usernameTextField.text
    }
    
    //MARK: Buttons methods
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your username is User")
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is Password")
    }
    @IBAction func logInButtonTapped() {
        if usernameTextField.text != "User" || passwordTextField.text != "Password" {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }

    //MARK: Unwind method
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        usernameTextField.text = ""
        passwordTextField.text = ""
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
