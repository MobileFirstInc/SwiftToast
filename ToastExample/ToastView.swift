//
//  ToastView.swift
//  TangoTab
//
//  Created by MobileFirst on 16/09/15.
//  Copyright (c) 2015 Mobile First Private Limited. All rights reserved.
//

import Foundation
import UIKit


class ToastView: UIView {
    
    var lblMessage:UILabel!
    var frameRect:CGRect!
    var strTitle:String!
    var font:UIFont!
    var backColor:UIColor!
    var duration:NSTimeInterval!
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        frameRect=frame
        font = UIFont.systemFontOfSize(14)
        backColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        duration=2

    }
    
    convenience init () {
        self.init(frame:CGRectZero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func setUp (){
        frameRect=frame
        self.backgroundColor=backColor
        self.layer.cornerRadius=5
        lblMessage=UILabel(frame:self.frame)
        lblMessage.font = font
        lblMessage.textColor=UIColor.whiteColor()
        self.addSubview(lblMessage)
        lblMessage.textAlignment=NSTextAlignment.Center
        
    }
    func showMessage(msg:String)
    {
        setUp()

        lblMessage.text=msg as String
        var timer = NSTimer.scheduledTimerWithTimeInterval(duration, target: self, selector: Selector("hideViewToast"), userInfo: nil, repeats: false)
    }
    

    func hideViewToast()
    {
        
        self.alpha=1
        UIView.animateWithDuration(1, animations:  {() in
            self.alpha=0
            }, completion:{(Bool)  in
                self.removeFromSuperview()
        })

        
    }
    
}
