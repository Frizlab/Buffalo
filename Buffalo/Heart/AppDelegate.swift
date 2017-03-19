/*
 * AppDelegate.swift
 * Buffalo
 *
 * Created by François Lamboley on 11/20/16.
 * Copyright © 2016 Frizlab. All rights reserved.
 */

import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]? = nil) -> Bool {
		/* Called when application is launched (will not necessarily go to
		 * foreground, nor necessarily called when app goes to foreground). */
		return true
	}
	
	func applicationWillResignActive(_ application: UIApplication) {
		/* Called when app is about to leave its responder status (taps on the
		 * screen are not sent to the App anymore). */
	}
	
	func applicationDidEnterBackground(_ application: UIApplication) {
		/* Called when the app just went to the background. */
	}
	
	func applicationWillEnterForeground(_ application: UIApplication) {
		/* Called when the app will go to the foreground (before it is in the
		 * foreground). */
	}
	
	func applicationDidBecomeActive(_ application: UIApplication) {
		/* Called when app is about to retrieve its responder status (taps on the
		 * screen are sent to the App again). */
	}
	
	func applicationWillTerminate(_ application: UIApplication) {
		/* Called just before the App is terminated by the system. */
	}
	
}
