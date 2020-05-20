//
//  Golab.swift
//  DietitianApp
//
//  Created by LinweiTan on 2020/2/29.
//  Copyright © 2020 TanLinwei. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import MJRefresh
import Kingfisher

//MARK:应用默认颜色
extension UIColor {
  class var backgroundColor: UIColor {
    return UIColor(red: 229, green: 229, blue: 229, alpha: 0.8)
  }
  class var navigationClolr:UIColor {
    return UIColor(red: 42, green: 42, blue: 50, alpha: 1.0)
  }
}

var isIphoneX: Bool {
  return UIDevice().userInterfaceIdiom == .phone
        && (max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 812
            || max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 896)
}

//MARK: print
func Log<T>(_ message: T, file: String = #file, function: String = #function, lineNumber: Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("[\(fileName):funciton:\(function):line:\(lineNumber)]- \(message)")
    #endif
}

