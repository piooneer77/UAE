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
        meetingNavController.tabBarItem.title = "الاجتماعات"
        meetingNavController.tabBarItem.image = #imageLiteral(resourceName: "meting")
        viewControllers = [meetingNavController/*, createTabBarControllerWithTitle(title: "القرارات", image: #imageLiteral(resourceName: "decesions")),createTabBarControllerWithTitle(title: "المحادثات", image: #imageLiteral(resourceName: "chat"))*/]
    }
    
    private func createTabBarControllerWithTitle(title: String, image: UIImage) -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
}
