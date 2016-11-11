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
		window?.rootViewController?.route(action: screen)
	}
}

