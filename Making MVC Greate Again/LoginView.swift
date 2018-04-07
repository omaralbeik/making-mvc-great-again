//
//  LoginView.swift
//  Making MVC Greate Again
//
//  Created by Omar Albeik on 4/7/18.
//  Copyright © 2018 Omar Albeik. All rights reserved.
//

import UIKit
import SnapKit

protocol LoginViewDelegate: class {
	func loginView(_ view: LoginView, didTapLoginButton button: UIButton)
}

class LoginView: View {

	weak var delegate: LoginViewDelegate?

	var emailAddress: String {
		return emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
	}

	var password: String {
		return passwordTextField.text ?? ""
	}

	private lazy var emailTextField: UITextField = {
		return UITextField(placeholder: "Email Address", keyboardType: .emailAddress)
	}()

	private lazy var passwordTextField: UITextField = {
		return UITextField(placeholder: "Password", isSecureTextEntry: true)
	}()

	private lazy var loginButton: UIButton = {
		return UIButton(title: "Login", image: nil)
	}()

	private lazy var resetButton: UIButton = {
		return UIButton(title: "Reset", image: nil)
	}()

	private lazy var stackView: UIStackView = {
		let view = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton, resetButton])
		view.axis = .vertical
		view.alignment = .fill
		view.distribution = .fillEqually
		view.spacing = 10
		return view
	}()

	override func setViews() {
		super.setViews()

		loginButton.addTarget(self, action: #selector(didTapLoginButton(_:)), for: .touchUpInside)
		resetButton.addTarget(self, action: #selector(didTapResetButton(_:)), for: .touchUpInside)
		addSubview(stackView)
	}

	override func layoutViews() {
		stackView.snp.makeConstraints { make in
			make.top.equalToSuperview().inset(100)
			make.leading.equalToSuperview().inset(20)
			make.trailing.equalToSuperview().inset(20)
		}
	}

}

// MARK: - Actions
private extension LoginView {

	@objc func didTapLoginButton(_ button: UIButton) {
		delegate?.loginView(self, didTapLoginButton: button)
	}

	@objc func didTapResetButton(_ button: UIButton) {
		endEditing(false)
		emailTextField.text = ""
		passwordTextField.text = ""
	}

}
