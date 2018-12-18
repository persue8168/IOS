//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by 509 on 2018/10/17.
//  Copyright © 2018年 2016110346. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //创建window
        //创建窗口以适应当前手机屏幕的大小，UIScreen
        window = UIWindow(frame:UIScreen.main.bounds)
        window?.backgroundColor = UIColor.brown
        //        //创建Controller，设置跟视图控制器为ViewController
        //        window?.rootViewController = ViewController()
        
        //        let navigationController = UINavigationController(rootViewController: ViewController())
        //        window?.rootViewController = navigationController
        
        let nc = UINavigationController(rootViewController: FirstViewController())
        let tc = UITabBarController()
        tc.addChildViewController(nc)
        tc.addChildViewController(SecondViewController())
        tc.addChildViewController(ThirdViewController())
        window?.rootViewController = tc
        //
        window?.makeKeyAndVisible()
        print("application")
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

