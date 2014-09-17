//
//  AppDelegate.swift
//  CustomWindowInCode
//
//  Created by Mazharul Huq on 6/10/14.
//  Copyright (c) 2014 Mazharul Huq. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window:MyWindow!
   
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        let frame: CGRect = UIScreen.mainScreen().bounds
         window = MyWindow(frame: CGRect(x: 50,y: 50,width: frame.width - 100,height: frame.height - 100))
        self.window.backgroundColor = UIColor.whiteColor()
        self.window.makeKeyAndVisible()
        return true
    }
}

