//
//  LoginViewController.swift
//  Making MVC Greate Again
//
//  Created by Omar Albeik on 4/7/18.
//  Copyright © 2018 Omar Albeik. All rights reserved.
//

import UIKit

class LoginViewController: ViewController<LoginView>, KeyboardObserving {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		customView.delegate = self
		registerForKeyboardEvents()
	}

	func keyboardWillShow(_ notification: Notification) {
		customView.handleKeyboardWillShow(notification)
	}

	func keyboardWillHide(_ notification: Notification) {
		customView.handleKeyboardWillHide(notification)
	}

	deinit {
		unregisterFromKeyboardEvents()
	}
}

// MARK: - LoginViewDelegate
extension LoginViewController: LoginViewDelegate {
	
	func loginView(_ view: LoginView, didTapLoginButton button: UIButton) {
		print("Email Address: \(customView.emailAddress)")
		print("Password: \(customView.password)")
	}
	
}
