//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var profilePhoto: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        setupPersonInfo()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.person = person
    }
    
    private func setupPersonInfo() {
        navigationItem.title = "\(person.name) \(person.surname)"
        profilePhoto.image = person.profilePhoto ?? UIImage(systemName: "person")
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        ageLabel.text = String(person.age)
        professionLabel.text = person.profession
    }
    
}
