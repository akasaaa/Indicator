//
//  ViewController.swift
//  Indicator
//
//  Created by 赤迫亮太 on 2018/10/28.
//  Copyright © 2018年 akasaaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func push(_ sender: UIButton) {
        let next = UIStoryboard(name: "Next", bundle: nil).instantiateInitialViewController()!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func modal(_ sender: UIButton) {
        let next = UIStoryboard(name: "Next", bundle: nil).instantiateInitialViewController() as! NextViewController
        next.isModal = true
        let navigation = UINavigationController(rootViewController: next)
        present(navigation, animated: true)
    }
    
}

