//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//

import UIKit

class ProfileViewController: UIViewController {

    //    MARK: IBOutlets
    @IBOutlet var profilePhoto: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    
    //    MARK: Public properties
    var person: Person!
    
    //    MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()
        setupPersonInfo()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.height / 2
        profilePhoto.layer.borderWidth = 1
        profilePhoto.layer.borderColor = UIColor.black.cgColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.person = person
    }
    
    //    MARK: Private methods
    private func setupPersonInfo() {
        navigationItem.title = "\(person.name) \(person.surname)"
        profilePhoto.image = person.profilePhoto
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        ageLabel.text = String(person.age)
        professionLabel.text = person.profession
    }
    
}
