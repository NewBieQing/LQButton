//
//  ViewController.swift
//  LQButtonDemo
//
//  Created by liqing-xy on 16/7/15.
//  Copyright © 2016年 liqing-xy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let leftSpace = (UIScreen.mainScreen().bounds.width-200)/2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        //BtnImgCenter
        let btn1 = LQButton(frame: CGRectMake(leftSpace,40,200,60))
        btn1.layer.borderWidth              = 1
        self.view.addSubview(btn1)
        btn1.setTitle("Email", forState: .Normal)
        btn1.setImage(UIImage(named: "ic_btn_bg"), forState: .Normal)
        btn1.titleType = .BtnImgCenter
        
        let btn2 = LQButton(frame: CGRectMake(leftSpace,110,200,60))
        btn2.setTitle("Email", forState: .Normal)
        btn2.setImage(UIImage(named: "ic_btn_left"), forState: .Normal)
        btn2.layer.borderWidth = 1
        self.view.addSubview(btn2)
        btn2.titleOffset    = 30
        btn2.titleType      = .BtnImgCenter
        
        //BtnImgLeft
        let btn3 = LQButton(frame: CGRectMake(leftSpace,180,200,60))
        btn3.setTitle("Email", forState: .Normal)
        btn3.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn3.setImage(UIImage(named: "ic_email"), forState: .Normal)
        btn3.layer.borderWidth = 1
        self.view.addSubview(btn3)
        btn3.titleOffset    = 0
        btn3.titleType      = .BtnImgLeft
        
        //BtnImgRight
        let btn4 = LQButton(frame: CGRectMake(leftSpace,250,200,60))
        btn4.setTitle("Email", forState: .Normal)
        btn4.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn4.setImage(UIImage(named: "ic_email"), forState: .Normal)
        btn4.layer.borderWidth = 1
        self.view.addSubview(btn4)
        btn4.titleOffset    = 0
        btn4.titleType      = .BtnImgRight
        
        //BtnImgAbove
        let btn5 = LQButton(frame: CGRectMake(leftSpace,320,200,60))
        btn5.setTitle("Email", forState: .Normal)
        btn5.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn5.setImage(UIImage(named: "ic_email"), forState: .Normal)
        btn5.layer.borderWidth           = 1
        self.view.addSubview(btn5)
        btn5.titleOffset    = 0
        btn5.titleType      = .BtnImgAbove
        
        //BtnImgBelow
        let btn6 = LQButton(frame: CGRectMake(leftSpace,390,200,60))
        btn6.setTitle("Email", forState: .Normal)
        btn6.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn6.setImage(UIImage(named: "ic_email"), forState: .Normal)
        btn6.layer.borderWidth = 1
        self.view.addSubview(btn6)
        btn6.titleOffset    = 0
        btn6.titleType      = .BtnImgBelow
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

