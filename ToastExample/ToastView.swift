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
    
    var lblMessage : UILabel!
    var frameRect = CGRect.zero
    var strTitle = ""
    var font = UIFont.systemFont(ofSize: 14)
    var backColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
    var duration : Double = 2
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        frameRect = frame
    }
    
    convenience init () {
        self.init(frame: .zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func setUp (){
        frameRect=frame
        self.backgroundColor = backColor
        self.layer.cornerRadius = 5
        lblMessage = UILabel(frame:self.frame)
        lblMessage.font = font
        lblMessage.textColor = .white
        self.addSubview(lblMessage)
        lblMessage.textAlignment = .center
    }
    func showMessage(_ msg:String)
    {
        setUp()
        lblMessage.text = msg
        _ = Timer.scheduledTimer(timeInterval: duration, target: self, selector: #selector(ToastView.hideViewToast), userInfo: nil, repeats: false)
    }
    

    func hideViewToast()
    {
        self.alpha = 1
        UIView.animate(withDuration: 1, animations:  {() in
            self.alpha = 0
            }, completion:{(Bool)  in
                self.removeFromSuperview()
        })
    }
    
}
