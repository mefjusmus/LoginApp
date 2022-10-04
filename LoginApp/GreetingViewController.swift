//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 2.10.22.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(userName ?? "")"
        setGradient()
    }
    
    private func setGradient() {
        let gradient = CAGradientLayer()
        
        let color1 = UIColor(
            red: 197 / 255,
            green: 125 / 255,
            blue: 141 / 255,
            alpha: 1
        ).cgColor
        
        let color2 = UIColor(
            red: 135 / 255,
            green: 152 / 255,
            blue: 220 / 255,
            alpha: 1
        ).cgColor
        
        gradient.colors = [color1, color2]
        gradient.frame = view.bounds
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
