//
//  WindowProvider.swift
//  pipeline tracker
//
//  Created by Aleksei Chikin on 21.11.2021.
//  Copyright © 2021 Aleksei Chikin. All rights reserved.
//

import Cocoa

class WindowProvider {
	var authWindow: AuthWindow?

	func openAuth() {
		print("openAuth")
		if self.authWindow === nil {
			self.authWindow = AuthWindow()
		}

		NSApp.activate(ignoringOtherApps: true)
		self.authWindow?.showWindow(self)
		self.authWindow?.window?.makeKeyAndOrderFront(self)
	}
}
