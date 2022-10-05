//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 2.10.22.
//

import UIKit

class GreetingViewController: UIViewController {

    //    MARK: IBOutlets
    @IBOutlet var greetingLabel: UILabel!
    
    //    MARK: Public properties
    var person: Person!
    
    //    MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(person.name) \(person.surname)"
        view.setGradient()
    }
    

}
