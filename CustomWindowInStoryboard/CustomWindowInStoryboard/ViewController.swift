//
//  ViewController.swift
//  CustomWindowInStoryboard
//
//  Created by Mazharul Huq on 6/11/14.
//  Copyright (c) 2014 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
    }
 
    override func viewDidAppear(animated: Bool)  {
        super.viewDidAppear(animated)
        //This is required to make the view inset of the custom window
        let deltaW = self.view.window!.frame.width - 40
        let deltaH = self.view.window!.frame.height - 40
        let frame: CGRect = CGRectMake(20, 20, deltaW, deltaH)
        self.view.frame = frame
        self.view.backgroundColor = UIColor.blueColor()
        self.view.window!.backgroundColor = UIColor.redColor()
        
        println(self.view.window)
        println("  ")
        println((UIApplication.sharedApplication().delegate as AppDelegate).window)
        println("  ")
        println(UIApplication.sharedApplication().delegate!.window)
        println("  ")
        println(UIApplication.sharedApplication().keyWindow)
        
    }

    @IBAction func buttonPressed(sender : AnyObject) {
        
        //When button is pressed the balckground colors of the view
        //and the window are changed
        if self.view.backgroundColor == UIColor.blueColor()
        {
            self.view.backgroundColor=UIColor.redColor()
            self.view.window!.backgroundColor=UIColor.blueColor()
        }
        else
        {
            self.view.backgroundColor=UIColor.blueColor()
            self.view.window!.backgroundColor=UIColor.redColor()
        }
        
    }

}

