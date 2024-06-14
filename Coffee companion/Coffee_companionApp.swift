//
//  Coffee_companionApp.swift
//  Coffee companion
//
//  Created by w . on 20/03/2024.
//

import SwiftUI
import SwiftData

@main
struct Coffee_companionApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            CoffeeBeans.self,
            Brew.self,
            Folder.self,
            Grinder.self,
            Brewer.self
        ])

        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
