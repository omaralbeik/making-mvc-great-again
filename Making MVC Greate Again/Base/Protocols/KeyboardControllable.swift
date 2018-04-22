//
//  KeyboardControllable.swift
//  Making MVC Greate Again
//
//  Created by Omar Albeik on 4/22/18.
//  Copyright © 2018 Omar Albeik. All rights reserved.
//

import UIKit

/// Conform to KeyboardControllable protocol in a view to handle UIKeyboard events.
protocol KeyboardControllable: class {

	/// Call this method from view contoller to handle KeyboardWillShow notification.
	///
	/// - Parameter notification: keyboard notificaton sent from system.
	func handleKeyboardWillShow(_ notification: Notification)

	/// Call this method from view contoller to handle handleKeyboardDidShow notification.
	///
	/// - Parameter notification: keyboard notificaton sent from system.
	func handleKeyboardDidShow(_ notification: Notification)

	/// Call this method from view contoller to handle handleKeyboardWillHide notification.
	///
	/// - Parameter notification: keyboard notificaton sent from system.
	func handleKeyboardWillHide(_ notification: Notification)

	/// Call this method from view contoller to handle handleKeyboardDidHide notification.
	///
	/// - Parameter notification: keyboard notificaton sent from system.
	func handleKeyboardDidHide(_ notification: Notification)

	/// Call this method from view contoller to handle handleKeyboardWillChangeFrame notification.
	///
	/// - Parameter notification: keyboard notificaton sent from system.
	func handleKeyboardWillChangeFrame(_ notification: Notification)

	/// Call this method from view contoller to handle handleKeyboardDidChangeFrame notification.
	///
	/// - Parameter notification: keyboard notificaton sent from system.
	func handleKeyboardDidChangeFrame(_ notification: Notification)

}

extension KeyboardControllable where Self: UIView {

	func handleKeyboardWillShow(_ notification: Notification) {}

	func handleKeyboardDidShow(_ notification: Notification) {}

	func handleKeyboardWillHide(_ notification: Notification) {}

	func handleKeyboardDidHide(_ notification: Notification) {}

	func handleKeyboardWillChangeFrame(_ notification: Notification) {}

	func handleKeyboardDidChangeFrame(_ notification: Notification) {}

}
