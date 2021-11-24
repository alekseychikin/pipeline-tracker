//
//  AppDelegate.swift
//  pipeline tracker
//
//  Created by Aleksei Chikin on 05.11.2021.
//  Copyright © 2021 Aleksei Chikin. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	var windowProvider: WindowProvider = WindowProvider()
	var statusBarIcon: StatusBarIcon!
	var statusBarMenu: StatusBarMenu!

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		self.statusBarIcon = StatusBarIcon()
		self.statusBarMenu = StatusBarMenu(self.windowProvider)
		self.statusBarIcon.bindMenu(self.statusBarMenu)
	}

	func application(_ application: NSApplication, open urls: [URL]) {
		print(urls[0])
	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}
}
