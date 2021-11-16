//
//  ContentView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

// rootView here

import SwiftUI

struct ContentView: View {

    @StateObject var ViewRoute: viewRouter // Her giver vi muligheden for ContentView at "observere" ViewRouter, vis views er koblet op på vores ObservableObject i ModelData.
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Ingredients.name, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Ingredients>
    
    var body: some View { // angiv herunder vores views, med lignende parametre
        
        switch ViewRoute.pageView {
        case .page1:
            MainPageView(ViewRoute: ViewRoute)
        case .page2:
            YourIngredients(ViewRoute: ViewRoute)
        case .page3:
            AddIngredient(ViewRoute: ViewRoute)
        case .page4:
            Possiblerecipes(ViewRoute: ViewRoute)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(ViewRoute: viewRouter()).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

