//
//  Extension + Alert.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 3.10.22.
//

import Foundation
import UIKit

extension ViewController {
    func showAlertWith(title: String?, message: String?, handler: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: handler)
        alert.addAction(alertAction)
        self.present(alert, animated: true)
    }
}
