//
//  AddIngredient.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import SwiftUI

struct AddIngredient: View {
    
    //@StateObject var ViewRoute: viewRouter
    
    var body: some View {
        
        VStack {
            /*HStack {
             Button(action: {
             ViewRoute.pageView = .page1
             }) {
             backButton()
             }
             } */
            
            Text("Tap and store ingredients here")
                .fontWeight(.bold)
                .foregroundColor(Color.red)
        }
        .navigationTitle("Add Ingredients")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}


struct AddIngredient_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredient()
        //AddIngredient(ViewRoute: viewRouter())
    }
}
