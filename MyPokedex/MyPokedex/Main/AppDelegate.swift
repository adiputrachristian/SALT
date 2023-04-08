//
//  AppDelegate.swift
//  MyPokedex
//
//  Created by Christian Adiputra on 28/02/23.
//

import UIKit
import Provider
import Login

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        guard let appWindow = window else {
            fatalError("failed to create window")
        }
        
        LoginProvider.instance = LoginFeatureProvider()
        let nav = UINavigationController(rootViewController: LoginProvider.instance.createLoginScreenVC())
        appWindow.rootViewController = nav
        appWindow.makeKeyAndVisible()
        
        return true
        
        
    }
    
}

