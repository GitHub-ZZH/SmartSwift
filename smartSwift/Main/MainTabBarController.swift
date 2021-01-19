//
//  MainTabBarController.swift
//  smartSwift
//
//  Created by abovelink on 2020/11/23.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        
        buildSubviews()
    }
    
    func buildSubviews() {
        
        let homeVc = HomeViewController()
        homeVc.tabBarItem.title = "主页"
        
        let settingVc = SettingViewController()
        settingVc.tabBarItem.title = "设置"
        
        self.setViewControllers([homeVc, settingVc], animated: true)
        
    }
    
}
