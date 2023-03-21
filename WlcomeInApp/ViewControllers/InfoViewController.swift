//
//  InfoController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 18.03.2023.
//

import UIKit

class InfoViewController: UIViewController {

    
//MARK: IB Outlest
    @IBOutlet var infoAbout: UILabel!
    
    
//MARK: Properties
    var user: User!
    
    
//MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.name) \(user.person.surname)"
        infoAbout.text = user.person.infoAbout
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreAboutVC = segue.destination as? MoreAboutViewController else { return }
        moreAboutVC.user = user
    }
}
