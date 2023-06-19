//
//  ToDoAppSDApp.swift
//  ToDoAppSD
//
//  Created by Mitch Andrade on 6/13/23.
//

import SwiftUI
import SwiftData

@main
struct ToDoAppSDApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Item.self)
        }
    }
}
