//
//  LoginViewController.swift
//  Making MVC Greate Again
//
//  Created by Omar Albeik on 4/7/18.
//  Copyright © 2018 Omar Albeik. All rights reserved.
//

import UIKit

class LoginViewController: ViewController<LoginView> {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		customView.delegate = self
	}
	
}

// MARK: - LoginViewDelegate
extension LoginViewController: LoginViewDelegate {
	
	func loginView(_ view: LoginView, didTapLoginButton button: UIButton) {
		print("Email Address: \(customView.emailAddress)")
		print("Password: \(customView.password)")
	}
	
}
