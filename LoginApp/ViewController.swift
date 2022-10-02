//
//  ViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 2.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let userData = UserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userName = userNameTextField.text, !userName.isEmpty,
              let password = passwordTextField.text, !password.isEmpty,
              userName == userData.userName, password == userData.password else {
            showAlertWith(title: "Incorrect input", message: "Check your username or password") { _ in
                self.passwordTextField.text = ""
            }
            return
        }
        
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.userName = userName
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func helpButtonDidTapped(_ sender: UIButton) {
        switch sender {
        case forgotPasswordButton:
            showAlertWith(title: "Oops!", message: "Your password is \(userData.password)", handler: nil)
        default:
            showAlertWith(title: "Oops!", message: "Your name is \(userData.userName)", handler: nil)
        }
    }
}

