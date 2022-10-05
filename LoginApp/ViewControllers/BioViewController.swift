//
//  BioViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//

import UIKit

class BioViewController: UIViewController {

    //    MARK: IBOutlets
    @IBOutlet var profileInfoLabel: UILabel!
    
    //    MARK: Public properties
    var person: Person!
    
    //    MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        navigationItem.title = "\(person.name) \(person.surname) Bio"
        profileInfoLabel.text = person.bio
    }
    

}
