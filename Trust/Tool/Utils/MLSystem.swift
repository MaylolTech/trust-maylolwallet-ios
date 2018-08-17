// Copyright DApps Platform Inc. All rights reserved.

import Foundation
import UIKit

let ShareApplication = UIApplication.shared

let ShareAppDelegate = UIApplication.shared.delegate as! AppDelegate

/// 屏幕宽度
public var kScreenW: CGFloat = kWindow!.bounds.width

/// 屏幕高度
public let kScreenH = kWindow?.bounds.height

/// 屏幕尺寸
public let kScreenSize = kWindow?.bounds.size

/// 屏幕比例
public let kScreenScale = UIScreen.main.scale

/// 统一转场动画时长
public let kViewTransDuration = 0.25

public let kWindow = ShareAppDelegate.window

//let ShareAppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

/**
 设置状态栏样式为白色
 */
public func MLStatusBarStyleLight() {
    ShareApplication.statusBarStyle = UIStatusBarStyle.lightContent
}

/**
 设置状态栏样式为黑色
 */
public func MLStatusBarSytleDefault() {
    ShareApplication.statusBarStyle = UIStatusBarStyle.default
}

/// 当前系统版本
public let MLCurrentVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
