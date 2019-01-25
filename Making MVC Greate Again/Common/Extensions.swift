//
//  Extensions.swift
//  Making MVC Greate Again
//
//  Created by Omar Albeik on 4/7/18.
//  Copyright © 2018 Omar Albeik. All rights reserved.
//

import UIKit

extension UITextField {
	
	convenience init(
		placeholder: String,
		keyboardType: UIKeyboardType = .default,
		textAlignment: NSTextAlignment = .center,
		isSecureTextEntry: Bool = false) {
		
		self.init()
		
		self.placeholder = placeholder
		self.keyboardType = keyboardType
		self.textAlignment = textAlignment
		self.isSecureTextEntry = isSecureTextEntry
	}
	
}

extension UIButton {
	
	convenience init(
		type: UIButtonType = .system,
		title: String?,
		image: UIImage?) {
		
		self.init(type: type)
		
		self.setTitle(title, for: .normal)
		self.setImage(image, for: .normal)
	}
	
}

extension Notification {
    var keyboardSize: CGSize? {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.size
    }
    var keyboardAnimationDuration: Double? {
        return userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double
    }
}
