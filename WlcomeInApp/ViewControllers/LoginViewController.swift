//
//  ViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    //MARK: - Properties
    let user = User.init(login: "User", password: "1", person: Person(name: "Artemy", surname: "Derik"))
    
    
    //MARK: Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeViewController = viewController as? WelcomeViewController {
                welcomeViewController.usernameAgent = user.person.name
            } else if viewController is UINavigationController {
                viewController.title = "About \(user.person.name)"
            } else if let settingsViewController = viewController as? SettingsViewController {
                settingsViewController.showAlert(with: "Hi!", and: "Set the view in any color you want and press the Set button to paint the background")
            }
        }
    }
    
    
    //MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    //MARK: Buttons methods
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your username is \(user.login)", textField: usernameTextField)
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is \(user.password)", textField: passwordTextField)
    }
    @IBAction func logInButtonTapped() {
        guard usernameTextField.text == user.login, passwordTextField.text == user.password else {
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
