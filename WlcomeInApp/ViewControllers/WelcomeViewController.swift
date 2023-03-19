//
//  WelcomeViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var userNameLabelGreeting: UILabel!
    var usernameAgent: String!
    let user = User.init(login: "User", password: "1", person: Person(name: "Artemy", surname: "Derik"))

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabelGreeting.text = usernameAgent
        
    }
}
