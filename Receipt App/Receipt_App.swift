//
//  Receipt_AppApp.swift
//  Receipt App
//
//  Created by Will Xavier on 07/05/21.
//

import SwiftUI

@main
struct Receipt_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
