/*
 * AppDelegate.swift
 * Buffalo
 *
 * Created by François Lamboley on 11/20/16.
 * Copyright © 2016 Frizlab. All rights reserved.
 */

import UIKit
import CoreData



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
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
		saveContext()
	}
	
	/* ***********************
	   MARK: - Core Data Stack
	   *********************** */
	
	lazy var persistentContainer: NSPersistentContainer = {
		let container = NSPersistentContainer(name: "Buffalo")
		container.loadPersistentStores { storeDescription, error in
			if let error = error as NSError? {
				fatalError("Unresolved error \(error), \(error.userInfo)")
			}
		}
		return container
	}()
	
	/* ********************************
	   MARK: - Core Data Saving Support
	   ******************************** */
	
	func saveContext () {
		let context = persistentContainer.viewContext
		if context.hasChanges {
			do {
				try context.save()
			} catch {
				let nserror = error as NSError
				fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
			}
		}
	}
	
}

