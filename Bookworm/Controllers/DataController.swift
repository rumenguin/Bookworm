//
//  DataController.swift
//  Bookworm
//
//  Created by RUMEN GUIN on 05/02/23.
//

import Foundation
import CoreData
//Data Model - Store definitions of the entities and attributes we want to use
//NSPersistentStoreContainer - Handles loading the actual data we have saved to the user’s device.
class DataController: ObservableObject {
    /// Prepare Core Data to load Bookworm Data Model
    let container = NSPersistentContainer(name: "Bookworm")
    
    /// Load the Bookworm Data Model on our container and tells Core Data to access our saved data according to the Data Model
    init() {
        container.loadPersistentStores { description, error in
            /// If data is corrupt
            if let error = error {
                print("DEBUG: Core data failed to load \(error.localizedDescription)")
            }
        }
    }
}
