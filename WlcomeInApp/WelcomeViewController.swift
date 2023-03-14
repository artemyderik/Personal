//
//  WelcomeViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabelGreeting: UILabel!
    
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginViewController = segue.source as? LoginViewController else { return }
        loginViewController.userNameAgent = ""
        loginViewController.passwordAgent = ""
    }
}
