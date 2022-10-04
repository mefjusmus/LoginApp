//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 2.10.22.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var personName: String!
    var personSurname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(personName ?? "") \(personSurname ?? "")"
        setGradient()
    }
    
    private func setGradient() {
        let color1 = UIColor(
            red: 243 / 255,
            green: 178 / 255,
            blue: 190 / 255,
            alpha: 1
        ).cgColor
        
        let color2 = UIColor(
            red: 120 / 255,
            green: 136 / 255,
            blue: 153 / 255,
            alpha: 1
        ).cgColor
        
        let gradient = CAGradientLayer()
        gradient.colors = [color1, color2]
        gradient.frame = view.bounds
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
