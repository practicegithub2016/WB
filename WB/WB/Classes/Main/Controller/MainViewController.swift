//
//  MainViewController.swift
//  WB
//
//  Created by Ryan on 2016/10/5.
//  Copyright © 2016年 RYAN. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    private lazy var composeBtn : UIButton = UIButton(imageName: "tabbar_compose_icon_add", bgImageName: "tabbar_compose_button")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupComposeBtn()
    }
}


// MARK: - 設置UI介面
extension MainViewController {
    
    private func setupComposeBtn() {
        // 1.將composeBtn添加到tabbar中
        tabBar.addSubview(composeBtn)
        
        // 2.設定位置
        composeBtn.center = CGPointMake(tabBar.center.x, tabBar.bounds.size.height * 0.5)
        
        // 3.監聽點擊
        composeBtn.addTarget(self, action:#selector(MainViewController.composeBtnClick), forControlEvents: .TouchUpInside)
    }
}

// MARK: - 事件監聽
extension MainViewController {
    
    // 在swift中,如果將函數聲明為private,需要在private前面加上@objc,否則在函數列表中會找不到
    @objc private func composeBtnClick() {
        print("composeBtnClikc")
    }
}
