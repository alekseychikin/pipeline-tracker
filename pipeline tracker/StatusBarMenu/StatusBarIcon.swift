//
//  StatusBarItem.swift
//  pipeline tracker
//
//  Created by Aleksei Chikin on 05.11.2021.
//  Copyright © 2021 Aleksei Chikin. All rights reserved.
//

import Cocoa

class StatusBarIcon {
	var statusBarIcon: NSStatusItem =
		NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

	init() {
		guard let statusBarIconButton = self.statusBarIcon.button else {
			return
		}

		statusBarIconButton.title = "Pipeline Tracker"
	}

	func bindAction(_ action: Selector) {
		guard let statusBarIconButton = self.statusBarIcon.button else {
			return
		}

		statusBarIconButton.action = action
	}

	func bindMenu(_ menu: NSMenu) {
		self.statusBarIcon.menu = menu
	}
}
