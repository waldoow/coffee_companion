//
//  ContentView.swift
//  Coffee companion
//
//  Created by w . on 20/03/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "list.bullet.below.rectangle")
                }
            
            Text("Notes")
                .tabItem {
                    Label("Notes", systemImage: "note.text")
                }
            
            Text("Folders")
                .tabItem {
                    Label("Folders", systemImage: "folder")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [
            CoffeeBeans.self,
            Brew.self,
            Folder.self,
            Grinder.self,
            Brewer.self
        ], inMemory: true)
}

