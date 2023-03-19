//
//  TabBarController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 19.03.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
    }
    
    private func generateTabBar() {
        viewControllers = []
    }
}
