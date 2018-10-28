//
//  Indicator.swift
//  Indicator
//
//  Created by 赤迫亮太 on 2018/10/28.
//  Copyright © 2018年 akasaaa. All rights reserved.
//

import UIKit

protocol IndicatorDisplayable {
    func startIndicator()
    func stopIndicator()
}

extension IndicatorDisplayable where Self: UIViewController {
    
    func startIndicator() {
        let target = UIApplication.shared.keyWindow!
        Indicator.shared.startAnimating(on: target)
    }
    
    func stopIndicator() {
        Indicator.shared.stopAnimating()
    }
}

class Indicator {
    
    static var shared = Indicator()
    
    private init() {
        setup()
    }
    
    let indicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.whiteLarge)
    
    func startAnimating(on view: UIView) {
        if !view.subviews.contains(indicator) {
            view.addSubview(indicator)
        }
        indicator.center = view.center
        indicator.startAnimating()
    }
    
    func stopAnimating() {
        indicator.stopAnimating()
    }
    
    private func setup() {
        indicator.frame = UIScreen.main.bounds
        indicator.hidesWhenStopped = true
    }
}
