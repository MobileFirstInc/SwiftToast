//
//  ViewController.swift
//  ToastExample
//
//  Created by Ankit on 16/09/15.
//  Copyright (c) 2015 Mobile First. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let viewToast = ToastView(frame: CGRect(x: 0,y: 0,width: 300,height: 50))
        viewToast.duration = 1;
        viewToast.backColor = UIColor.black
        if let font = UIFont(name: "Avenir-Roman", size: 20) {
            viewToast.font = font
        }
        self.view.addSubview(viewToast)
        viewToast.showMessage("Longer Press to your location")
        viewToast.center=self.view.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

