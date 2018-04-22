//
//  View.swift
//  Making MVC Greate Again
//
//  Created by Omar Albeik on 4/7/18.
//  Copyright © 2018 Omar Albeik. All rights reserved.
//

import UIKit

class View: UIView {

	override init(frame: CGRect) {
		super.init(frame: frame)

		setViews()
		layoutViews()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)

		setViews()
		layoutViews()
	}

	/// Set your view and its subviews here.
	func setViews() {
		backgroundColor = .white
	}

	/// Layout your subviews here.
	func layoutViews() {}

}
