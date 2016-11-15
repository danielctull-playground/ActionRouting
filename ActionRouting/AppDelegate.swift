//
//  AppDelegate.swift
//  ActionRouting
//
//  Created by Daniel Tull on 11/11/2016.
//  Copyright © 2016 Daniel Tull. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?

	func showScreen(_ screen: Screen) {

		guard let router = window?.rootViewController as? Router else {
			return
		}

		let routed = router.route(action: screen)
		print("IS THIS ROUTED?", routed)
	}
}
