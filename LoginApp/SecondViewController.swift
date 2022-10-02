//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 2.10.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome \(userName ?? "")"
    }
    
    

}
