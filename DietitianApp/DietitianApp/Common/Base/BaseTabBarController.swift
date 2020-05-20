//
//  BaseTabBarController.swift
//  DietitianApp
//
//  Created by LinweiTan on 2020/2/29.
//  Copyright © 2020 TanLinwei. All rights reserved.
//

import UIKit
class BaseTabBarController: UITabBarController {
  
  override func viewDidLoad() {
      super.viewDidLoad()

      tabBar.isTranslucent = false
      
      setupLayout()
  }
  func setupLayout(){
    //首页
    let homePage = HomeVC(titles: ["推荐","关注","VIP"], vcs: [HomeRecommendVC(),HomeFollowVC(),HomeVipVC()], pageStyle: .navgationBarSegment)
    addChildController(homePage, title: "首页", image: UIImage(named: "tab_home"), selectedImage: UIImage(named: "tab_home_S"))
    // 分类
    let classPage = ClassificationVC()
    addChildController(classPage,
                           title: "分类",
                           image: UIImage(named: "tab_class"),
                           selectedImage: UIImage(named: "tab_class_S"))
    //书架
    let bookPage  = BookVC()
    addChildController(bookPage,
                           title: "社区",
                           image: UIImage(named: "tab_book"),
                           selectedImage: UIImage(named: "tab_book_S"))
    //我的
    let minePage = MineVC()
    addChildController(minePage,
                           title: "我的",
                           image: UIImage(named: "tab_mine"),
                           selectedImage: UIImage(named: "tab_mine_S"))


  }
  
  
  func addChildController(_ childController: UIViewController, title:String?, image:UIImage? ,selectedImage:UIImage?) {
      
      childController.title = title
      childController.tabBarItem = UITabBarItem(title: nil,
                                                image: image?.withRenderingMode(.alwaysOriginal),
                                                selectedImage: selectedImage?.withRenderingMode(.alwaysOriginal))
      
      if UIDevice.current.userInterfaceIdiom == .phone {
          childController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
      }
      addChild(BaseNavigationController(rootViewController: childController))
  }

}

extension BaseTabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        guard let select = selectedViewController else { return .lightContent }
        return select.preferredStatusBarStyle
    }
}
