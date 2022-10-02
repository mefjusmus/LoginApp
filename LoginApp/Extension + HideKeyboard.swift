//
//  Extension + HideKeyboard.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 3.10.22.
//

import Foundation
import UIKit

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
