//
//  BioViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var profileInfoLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        navigationItem.title = "\(person.name) \(person.surname) Bio"
        profileInfoLabel.text = person.bio
    }
    

}
