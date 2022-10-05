//
//  Extension + UIView.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//

import UIKit

extension UIView {
    func setGradient() {
        let color1 = UIColor(
            red: 49 / 255,
            green: 61 / 255,
            blue: 99 / 255,
            alpha: 1
        ).cgColor
        
        let color2 = UIColor(
            red: 153 / 255,
            green: 103 / 255,
            blue: 106 / 255,
            alpha: 1
        ).cgColor
        
        let color3 = UIColor(
            red: 55 / 255,
            green: 87 / 255,
            blue: 126 / 255,
            alpha: 1
        ).cgColor
        
        let gradient = CAGradientLayer()
        gradient.colors = [color1, color2, color3]
        gradient.frame = bounds
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
