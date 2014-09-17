//
//  MyWindow.swift
//  CustomWindowInCode
//
//  Created by Mazharul Huq on 6/10/14.
//  Copyright (c) 2014 Mazharul Huq. All rights reserved.
/* ********************************************************************************
MyClass is a subclass of UIWindow class
***********************************************************************************/

import UIKit

class MyWindow: UIWindow {
    
        override init(frame: CGRect) {
        super.init(frame : CGRectZero)
        self.frame = frame
        //Creates an instance of MyView with margin of 20 all around
        let deltaW = frame.width - 40
        let deltaH = frame.height - 40
        var v = MyView(frame: CGRect(x: 20,y:  20,width: deltaW,height: deltaH))
        //Create an instance of UIViewController
        var viewController = UIViewController( )
        //Adds v as a subview of viewController view
        viewController.view.addSubview(v)
        //sets viewController as the rootViewController of the window
        self.rootViewController = viewController
        
    }

    required init(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
 }
