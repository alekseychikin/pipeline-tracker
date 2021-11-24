//
//  StatusBarMenu.swift
//  pipeline tracker
//
//  Created by Aleksei Chikin on 05.11.2021.
//  Copyright © 2021 Aleksei Chikin. All rights reserved.
//

import Cocoa

class StatusBarMenu: NSMenu {
	var windowProvider: WindowProvider!
	var customViewController: StatusBarMenuItemViewController!

	convenience init(_ windowProvider: WindowProvider) {
		self.init()
		self.windowProvider = windowProvider

		let customViewItem = NSMenuItem()
		self.customViewController = StatusBarMenuItemViewController(self.windowProvider)
		customViewItem.view = self.customViewController.view
		self.addItem(customViewItem)

		self.addItem(.separator())

		self.addItem(
			withTitle: "Закрыть",
			action: #selector(NSApplication.terminate(_:)),
			keyEquivalent: "q"
		)
	}
}
