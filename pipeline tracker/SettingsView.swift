//
//  ViewController.swift
//  pipeline tracker
//
//  Created by Aleksei Chikin on 05.11.2021.
//  Copyright © 2021 Aleksei Chikin. All rights reserved.
//

import Cocoa

class SettingsView: NSViewController {
	public var isOpen = false

	override func viewDidLoad() {
		super.viewDidLoad()

		self.isOpen = true

		// Do any additional setup after loading the view.
	}

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}

	override func viewDidDisappear() {
		super.viewDidDisappear()

		print("viewDidDisappear")
		self.isOpen = false
	}
}
