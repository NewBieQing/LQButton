//
//  LQButton.swift
//  PackageSwift
//
//  Created by liqing-xy on 16/3/8.
//  Copyright © 2016年 newbie_qing. All rights reserved.
//

import UIKit

enum LQButtonImageType{
    case BtnImgCenter //default
    case BtnImgLeft  //Img on left side of title
    case BtnImgRight //Img on right side of title
    case BtnImgAbove //Img above title
    case BtnImgBelow //Img below title
}

class LQButton: UIButton {

    var titleType:LQButtonImageType = .BtnImgCenter{
        didSet{
            adjustImageAndTitlePosition()
        }
    }
    var titleOffset:CGFloat = 0 {
        didSet{
            adjustImageAndTitlePosition()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setImage(image: UIImage?, forState state: UIControlState) {
        super.setImage(image, forState: state)
        self.adjustImageAndTitlePosition()
    }
    
    override func setTitle(title: String?, forState state: UIControlState) {
        super.setTitle(title, forState: state)
        self.adjustImageAndTitlePosition()
    }
    
    private func adjustImageAndTitlePosition(){
        if (self.titleLabel!.frame != CGRectZero){
            switch titleType{
            case .BtnImgAbove:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.titleEdgeInsets    = UIEdgeInsetsMake(0, -self.imageView!.frame.size.width, -self.imageView!.frame.size.height-titleOffset*(1-imgProption), 0);
            case .BtnImgBelow:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.titleEdgeInsets    = UIEdgeInsetsMake(-self.imageView!.frame.size.height-titleOffset*(1-imgProption), -self.imageView!.frame.size.width, 0, 0);
            case .BtnImgRight:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.titleEdgeInsets    = UIEdgeInsetsMake(0, -2*self.imageView!.frame.size.width-titleOffset*(1-imgProption), 0, 0);
            case .BtnImgLeft:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.titleEdgeInsets    = UIEdgeInsetsMake(0, titleOffset*(1-imgProption), 0, 0);
            case .BtnImgCenter:
                self.titleEdgeInsets    = UIEdgeInsetsMake(0, -self.imageView!.frame.size.width+titleOffset, 0, 0);
            }
        }
        if (self.imageView!.frame != CGRectZero){
            switch titleType{
            case .BtnImgAbove:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.imageEdgeInsets    = UIEdgeInsetsMake(-self.titleLabel!.intrinsicContentSize().height-titleOffset*imgProption, 0, 0, -self.titleLabel!.intrinsicContentSize().width);
            case .BtnImgBelow:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.imageEdgeInsets    = UIEdgeInsetsMake(0, 0, -self.titleLabel!.intrinsicContentSize().height-titleOffset*imgProption, -self.titleLabel!.intrinsicContentSize().width);
            case .BtnImgRight:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.imageEdgeInsets    = UIEdgeInsetsMake(0, 0, 0, -2*self.titleLabel!.intrinsicContentSize().width-titleOffset*imgProption);
            case .BtnImgLeft:
                let width = self.imageView!.frame.size.width + self.titleLabel!.intrinsicContentSize().width
                let imgProption = self.imageView!.frame.size.width/width
                self.imageEdgeInsets    = UIEdgeInsetsMake(0, 0, 0, titleOffset*imgProption);
            case .BtnImgCenter:
                self.imageEdgeInsets    = UIEdgeInsetsMake(0, 0, 0, -self.titleLabel!.intrinsicContentSize().width);
            }
        }
        
    }
    
}
