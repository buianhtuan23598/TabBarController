//
//  AppDelegate.swift
//  training
//
//  Created by Bùi Anh Tuấn on 12/5/19.
//  Copyright © 2019 Bùi Anh Tuấn. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let tabBarController = UITabBarController()
            let tabViewController1 = Screen1(
                nibName: "Screen1",
                bundle: nil)
            let tabViewController2 = screen2(
                nibName:"screen2",
                bundle: nil)
            let tabViewController3 = screen3(
            nibName: "Screen3",
            bundle: nil)
            let tabViewController4 = screen4(
            nibName:"screen4",
            bundle: nil)

            tabViewController1.tabBarItem = UITabBarItem(
                title: "Home",
                image: UIImage(named: "ic_location_blue"),
                tag: 1)
            tabViewController2.tabBarItem = UITabBarItem(
                title: "View",
                image:UIImage(named: "ic_search_blue") ,
                tag:2)
            tabViewController3.tabBarItem = UITabBarItem(
            title: "Total",
            image: UIImage(named: "ic_location_blue"),
            tag: 3)
            tabViewController4.tabBarItem = UITabBarItem(
            title: "Setting",
            image:UIImage(named: "ic_search_blue") ,
            tag:4)

            let controllers = [tabViewController1,tabViewController2]
            tabBarController.viewControllers = controllers
        //Create navigation controller
         let navigationController = UINavigationController(rootViewController: tabBarController)

            self.window = UIWindow(frame: UIScreen.main.bounds)
            self.window?.rootViewController = navigationController//Set navigation controller as window's root view
            self.window?.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

