//
//  ViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private var user = "User"
    private var password = "Password"

    //MARK: Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.usernameAgent = usernameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: Buttons methods
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your username is \(user)")
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is \(password)")
    }
    @IBAction func logInButtonTapped() {
        guard usernameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
            return
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
    
    private func showAlert(with title: String, and message: String) {
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
