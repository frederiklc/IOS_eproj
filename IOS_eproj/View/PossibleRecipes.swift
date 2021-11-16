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
        ZStack {
            HStack {
                Button(action: {
                    ViewRoute.pageView = .page1
                }) {
                    backButton()
                }
            }
            .padding(.leading, -150)
            .padding(.top, -350)
            
            VStack {
                Button(action: {
                    ViewRoute.pageView = .page1
                }) {
                    backButton()
                }
                
                Text("Her skal der være noget Web-hentning")
                
                Button(action: {
                    ViewRoute.pageView = .page2
                }) {
                    ButtonStand(ButtText: "www.qwerty.com") // <-------
                }
            }
        }
    }
}

struct Possiblerecipes_Previews: PreviewProvider {
    static var previews: some View {
        Possiblerecipes(ViewRoute: viewRouter())
    }
}

