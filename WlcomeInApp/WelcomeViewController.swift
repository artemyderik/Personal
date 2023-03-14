//
//  WelcomeViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabelGreeting: UILabel!
    
    var usernameAgent: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabelGreeting.text = usernameAgent
        
    }
    
 
    


        
    /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginViewController = segue.source as? LoginViewController else { return }
        userNameLabelGreeting.text = loginViewController.usernameTextField.text
    }
    */
}
