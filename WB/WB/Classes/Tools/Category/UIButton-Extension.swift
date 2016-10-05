//
//  UIButton-Extension.swift
//  WB
//
//  Created by Ryan on 2016/10/5.
//  Copyright © 2016年 RYAN. All rights reserved.
//

import UIKit

extension UIButton {
    
    // 0.convenience函數通常用在對系統的類進行構造函數的擴充
    // 1.convenience函數通常寫在extension內
    // 2.需要在init前面加上convenience
    // 3.需用呼叫self.init()
    convenience init (imageName : String, bgImageName : String) {
        self.init()
        
        setImage(UIImage(named: imageName), forState: .Normal);
        setImage(UIImage(named: imageName + "_highlighted"), forState: .Highlighted)
        setBackgroundImage(UIImage(named: bgImageName), forState: .Normal)
        setBackgroundImage(UIImage(named: bgImageName), forState: .Highlighted)
        sizeToFit()
    }
}
