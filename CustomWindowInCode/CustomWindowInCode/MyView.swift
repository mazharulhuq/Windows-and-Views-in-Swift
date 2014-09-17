//
//  MyView.swift
//  CustomWindowInCode
//
//  Created by Mazharul Huq on 6/10/14.
//  Copyright (c) 2014 Mazharul Huq. All rights reserved.

import UIkit

class MyView: UIView {
    
    //Constants storing colors to set view and window background colors
    let color1 =  UIColor(red: 0.8, green: 0.8, blue: 0.6, alpha: 1.0)
    let color2 =  UIColor(red: 0.5, green: 0.4, blue: 0.3, alpha: 1.0)
    
    override init(frame: CGRect) {
        super.init(frame: CGRectZero) //super.init is called with zero frame size
        self.frame = frame //The view frame is set equal to the input parameter frame
        self.backgroundColor = color1
        
        //An instance of UIButton of width 100 and height 50 is created and place at the center 
        //of the view
        
        var button = UIButton(frame: CGRect(x: (frame.width - 100)/2,y: (frame.height - 50)/2,width: 100,height: 50))
        
        button.setTitle("Click Me", forState: UIControlState.Normal)
        //Button color set red for normal state
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        //Button color is set blue for highlighted state
        button.setTitleColor(UIColor.blueColor(), forState: UIControlState.Highlighted)
        //func pressMe is set as the target for TouchUpInside event
        button.addTarget(self, action: Selector("pressMe:"), forControlEvents: UIControlEvents.TouchUpInside)
        //The button is added as the subview of MyView
        self.addSubview(button)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   //Method run when butto is pressed
   func pressMe(sender: AnyObject){
    
      //Change view backgroud color of the view and the window when button is pressed
        if self.backgroundColor == color1
       {
        
        self.window!.backgroundColor = color1
        self.backgroundColor = color2
       }
    else
      {
        self.window!.backgroundColor = color2
        self.backgroundColor = color1
      }
    
  }
    
}
