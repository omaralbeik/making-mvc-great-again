//
//  ViewController.swift
//  Making MVC Greate Again
//
//  Created by Omar Albeik on 4/7/18.
//  Copyright © 2018 Omar Albeik. All rights reserved.
//

import UIKit

class ViewController<V: View>: UIViewController {

	override func loadView() {
		view = V()
	}

	var customView: V {
		return view as! V
	}

}
