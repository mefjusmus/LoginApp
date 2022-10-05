//
//  ViewController.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 2.10.22.
//

import UIKit

class LogInViewController: UIViewController {

//    MARK: IBOutlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
 
    //    MARK: Private properties
    private let user = User.getUser()
     
    //    MARK: Override methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userNameTextField.text = user.name
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let greetingVC = viewController as? GreetingViewController {
                greetingVC.person = user.person
            } else if let navigationVC = viewController as? UINavigationController {
                if let profileVC = navigationVC.viewControllers.first as? ProfileViewController {
                    profileVC.person = user.person
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //    MARK: IBActions
    @IBAction func logInButtonDidTapped() {
        guard userNameTextField.text == user.name, passwordTextField.text == user.password else {
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
        ? showAlertWith(title: "Oops!", message: "Your password is \(user.password)")
        : showAlertWith(title: "Oops!", message: "Your name is \(user.name)")
    }
    
    //    MARK: Private methods
    private func showAlertWith(title: String?, message: String?, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

