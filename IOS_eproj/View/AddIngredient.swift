//
//  AddIngredient.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import SwiftUI

struct AddIngredient: View {
    
    @StateObject var ViewRoute: viewRouter
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                }
            }
            .navigationTitle("Add Ingredients")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

/*
 Button(action: {
 ViewRoute.pageView = .page1
 }) {
 backButton()
 }
 */

struct AddIngredient_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredient(ViewRoute: viewRouter())
    }
}
