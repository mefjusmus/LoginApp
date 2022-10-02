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
    
    @IBAction func logInButtonDidTapped(_ sender: UIButton) {
        switch sender {
        case forgotPasswordButton:
            showAlertWith(title: "Oops!", message: "Your password is \(userData.password)", handler: nil)
            return
        default:
            showAlertWith(title: "Oops!", message: "Your name is \(userData.userName)", handler: nil)
            return
        }
    }
}


extension ViewController {
    func showAlertWith(title: String?, message: String?, handler: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: handler)
        alert.addAction(alertAction)
        self.present(alert, animated: true)
    }
}

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

