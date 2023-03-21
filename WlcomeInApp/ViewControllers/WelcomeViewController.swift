//
//  WelcomeViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 14.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
//MARK: Properties
    var user: User!
    
    
//MARK: IB Outlets
    @IBOutlet var userNameLabelGreeting: UILabel!

    
//MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabelGreeting.text = user.person.name
    }
}
