//
//  MainTabBarViewController.swift
//  UAE
//
//  Created by Apple on 2/13/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        let meetingController = MeetingController(collectionViewLayout: layout)
        let meetingNavController = UINavigationController(rootViewController: meetingController)
        meetingNavController.tabBarItem.title = "Meeting"
        viewControllers = [meetingNavController]
    }
    
    private func createTabBarControllerWithTitle(title: String, imageName: String) -> UIViewController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}
