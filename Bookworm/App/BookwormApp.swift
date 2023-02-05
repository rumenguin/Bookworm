//
//  BookwormApp.swift
//  Bookworm
//
//  Created by RUMEN GUIN on 05/02/23.
//

import SwiftUI
//Managed Object Contexts. These are effectively the “live” version of your data – when you load objects and change them, those changes only exist in memory until you specifically save them back to the persistent store.
//View Context - Let us work with all our data in memory

@main
struct BookwormApp: App {
    /// Creates our DataController instance
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ///
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
