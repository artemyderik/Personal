//
//  SettingsViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 19.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
     func unwind(for segue: UIStoryboardSegue, sender: Any?) {
       guard let tabBarController = segue.source as? TabBarController else { return }
    }

}
