//
//  IngredientList.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

struct Possiblerecipes: View {
    
    @StateObject var ViewRoute: viewRouter
    
    var body: some View {
        NavigationView {
            ZStack {
                HStack {
                    Button(action: {
                        ViewRoute.pageView = .page1
                    }) {
                        backButton()
                    }
                }
                .padding(.leading, -150)
                .padding(.top, -389)
                
                /* NavigationLink(destination: AddIngredient(ViewRoute: ViewRoute)) {
                    Text("Back")
                } */
                
                VStack {

                    Text("Her skal der være noget Web-hentning")
                    
                    Button(action: {
                        ViewRoute.pageView = .page2
                    }) {
                        ButtonStand(ButtText: "www.qwerty.com") // <-------
                    }
                }
            }
            .navigationTitle("Possible recipes")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Possiblerecipes_Previews: PreviewProvider {
    static var previews: some View {
        Possiblerecipes(ViewRoute: viewRouter())
    }
}

