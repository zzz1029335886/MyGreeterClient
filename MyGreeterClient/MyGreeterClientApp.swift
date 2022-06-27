//
//  MyGreeterClientApp.swift
//  MyGreeterClient
//
//  Created by zerry on 2022/6/27.
//

import SwiftUI

@main
struct MyGreeterClientApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
