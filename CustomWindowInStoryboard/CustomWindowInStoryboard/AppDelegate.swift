//
//  AppDelegate.swift
//  CustomWindowInStoryboard
//
//  Created by Mazharul Huq on 6/11/14.
//  Copyright (c) 2014 Mazharul Huq. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window:UIWindow = {
        //CGRect created using bounds of mainscreen
        let frame: CGRect = UIScreen.mainScreen().bounds
        //My window is given a frame with a margin of 50 all around:
        let win = MyWindow(frame: CGRect(x: 50,y: 50,width: frame.width - 100,height: frame.height - 100))
        return win
    }()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        //This is necessary to create the instance window
        self.window.backgroundColor = UIColor.whiteColor()
        return true
    }

}

