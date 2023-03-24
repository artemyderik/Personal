//
//  MoreAboutViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 18.03.2023.
//

import UIKit

class MoreAboutViewController: UIViewController {
    
    
//MARK: Properties
    @IBOutlet var photoImage: UIImageView!
    var user: User!
    
    
//MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.secondImage)
        title = "\(user.person.name)'s works"
    }
}
