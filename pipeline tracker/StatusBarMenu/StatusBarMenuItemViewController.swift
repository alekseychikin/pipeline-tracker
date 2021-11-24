//
//  StatusBarMenuItemViewController.swift
//  pipeline tracker
//
//  Created by Aleksei Chikin on 23.11.2021.
//  Copyright © 2021 Aleksei Chikin. All rights reserved.
//

import Cocoa

class StatusBarMenuItemViewController: NSViewController {
	var windowProvider: WindowProvider!

	convenience init(_ windowProvider: WindowProvider) {
		self.init()
		self.windowProvider = windowProvider
	}

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	@IBAction func buttonAction(_ sender: Any?) {
		self.windowProvider.openAuth()
	}
}
