//
//  TabbarController.swift
//  itunesRx
//
//  Created by 김태윤 on 2023/11/08.
//

import UIKit

final class TabbarController: UITabBarController{
    
    struct TabbarString{
        let title: String
        let defaultIcon: String
        let selectedIcon: String
        func getTabbarItem()-> UITabBarItem{
            UITabBarItem(title: title, image: UIImage(systemName: defaultIcon), selectedImage: UIImage(systemName: selectedIcon))

        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc1 = TodayVC()
        vc1.title = "Today"
        
        let naviControllers = zip([vc1],
                                  [TabbarString(title: "first", defaultIcon: "house", selectedIcon: "house.fill")]).map{
            $0.0.navigationItem.largeTitleDisplayMode = .always
            let nav = UINavigationController(rootViewController: $0.0)
            nav.tabBarItem = $0.1.getTabbarItem()
            nav.navigationBar.prefersLargeTitles = true
            return nav
        }
        setViewControllers(naviControllers, animated: false)
    }
}
