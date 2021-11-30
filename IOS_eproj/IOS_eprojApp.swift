//
//  IOS_eprojApp.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

@main
struct IOS_eprojApp: App {
    let persistenceController = PersistenceController.shared
    //@StateObject var addIngredientViewModel: AddIngredientViewModel = AddIngredientViewModel()
    //@StateObject var ViewRoute = viewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            /*ContentView(ViewRoute: ViewRoute) // contentview's viewRouter will now be able to observe and access the viewRouter's observableObject*/

        }
    }
}
