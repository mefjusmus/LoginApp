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
    
    private let userName = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? GreetingViewController else { return }
        secondVC.userName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonDidTapped() {
        guard userNameTextField.text == userName, passwordTextField.text == password else {
            showAlertWith(
                title: "Incorrect input",
                message: "Check your username or password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showGreetingVC", sender: nil)
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func helpButtonDidTapped(_ sender: UIButton) {
        sender.tag == 1
        ? showAlertWith(title: "Oops!", message: "Your password is \(password)")
        : showAlertWith(title: "Oops!", message: "Your name is \(userName)")
    }
    
    private func showAlertWith(title: String?, message: String?, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

