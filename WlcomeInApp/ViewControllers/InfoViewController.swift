//
//  InfoController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 18.03.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infoAbout: UILabel!
    
    var user: User!
    
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
