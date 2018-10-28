//
//  NextViewController.swift
//  Indicator
//
//  Created by 赤迫亮太 on 2018/10/28.
//  Copyright © 2018年 akasaaa. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, IndicatorDisplayable {
    
    var isModal = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if isModal {
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "close", style: .plain, target: self, action: #selector(self.close))
        }
        
        startIndicator()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.stopIndicator()
        }
    }
    
    @objc private func close() {
        self.dismiss(animated: true)
    }
}
