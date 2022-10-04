//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//

import UIKit

class ProfileViewController: UIViewController {

    var personName: String!
    var personSurname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(personName ?? "") \(personSurname ?? "")"
    }
    

}
