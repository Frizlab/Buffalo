/*
 * DataHandler.swift
 * Buffalo
 *
 * Created by François Lamboley on 11/26/16.
 * Copyright © 2016 Frizlab. All rights reserved.
 */

import Foundation
import CoreData



class DataHandler {
	
	lazy var persistentContainer: NSPersistentContainer = {
		let container = NSPersistentContainer(name: "Buffalo")
		container.loadPersistentStores { storeDescription, error in
			if let error = error as NSError? {
				fatalError("Unresolved error \(error), \(error.userInfo)")
			}
		}
		return container
	}()
	
	var viewContext: NSManagedObjectContext {
		return persistentContainer.viewContext
	}
	
}
