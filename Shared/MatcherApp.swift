//
//  MatcherApp.swift
//  Shared
//
//  Created by Matthew McAvey on 9/7/20.
//

import SwiftUI

@main
struct MatcherApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
