//
//  ViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    //MARK: Public Properties
    private var user = "1"
    private var password = "1"

    //MARK: Override Methods
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
        showAlert(with: "Oops!", and: "Your username is \(user)", textField: usernameTextField)
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is \(password)", textField: passwordTextField)
    }
    @IBAction func logInButtonTapped() {
        guard usernameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password",
                textField: passwordTextField
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
    
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAlert = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        present(alert, animated: true)
        alert.addAction(okAlert)
    }
}
