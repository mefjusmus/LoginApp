//
//  ViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 2.10.22.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let userData = UserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? GreetingViewController else { return }
        secondVC.userName = userData.userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func showAlertWith(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    
    @IBAction func logInButtonDidTapped() {
        guard userNameTextField.text == userData.userName,
              passwordTextField.text == userData.password else {
            showAlertWith(title: "Incorrect input", message: "Check your username or password")
            return
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func helpButtonDidTapped(_ sender: UIButton) {
        switch sender {
        case forgotPasswordButton:
            showAlertWith(title: "Oops!", message: "Your password is \(userData.password)")
        default:
            showAlertWith(title: "Oops!", message: "Your name is \(userData.userName)")
        }
    }
}

