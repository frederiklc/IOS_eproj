//
//  IOS_eprojApp.swift
//  IOS_eproj


import SwiftUI

@main
struct IOS_eprojApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
