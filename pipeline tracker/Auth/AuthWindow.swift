//
//  AuthWindow.swift
//  pipeline tracker
//
//  Created by Aleksei Chikin on 21.11.2021.
//  Copyright © 2021 Aleksei Chikin. All rights reserved.
//

import Cocoa

class AuthWindow: NSWindowController {
	convenience init() {
		self.init(windowNibName: "AuthWindow")
	}

	override func windowDidLoad() {
		super.windowDidLoad()
		print("auth window did load")
		self.window?.makeKeyAndOrderFront(self)
		self.window?.makeMain()
	}

	@IBAction func authGithub(_ sender: Any) {
		let url = URL(string: "https://github.com/login/oauth/authorize?client_id=72b2ee068089ed7ed857&redirect_uri=pipeline-tracker%3A%2F%2Fgithub-auth&scope=user,repo")!

		if NSWorkspace.shared.open(url) {
			print("opened")
		}
	}
}
