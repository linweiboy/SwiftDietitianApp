//
//  BaseViewController.swift
//  DietitianApp
//
//  Created by LinweiTan on 2020/2/26.
//  Copyright © 2020 TanLinwei. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Then
import Reusable
import Kingfisher

class BaseViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.backgroundColor
    
    setupLayout()
  }
  override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      configNavigationBar()
  }
  
  func setupLayout() {}

  func configNavigationBar() {
      guard let navi = navigationController else { return }
      if navi.visibleViewController == self {
          navi.barStyle(.theme)
          navi.disablePopGesture = false
          navi.setNavigationBarHidden(false, animated: true)
          if navi.viewControllers.count > 1 {
            navigationItem.leftBarButtonItem=UIBarButtonItem(image: UIImage(named: "nav_back_white"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(pressBack))
          }
      }
  }
  
  @objc func pressBack() {
      navigationController?.popViewController(animated: true)
  }

  
}

extension BaseNavigationController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

