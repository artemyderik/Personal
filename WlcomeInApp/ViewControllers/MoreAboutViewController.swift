//
//  MoreAboutViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 18.03.2023.
//

import UIKit

class MoreAboutViewController: UIViewController {
    
    
//MARK: Properties
    var user: User!
    
    
//MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.name)'s works"
    }
}
