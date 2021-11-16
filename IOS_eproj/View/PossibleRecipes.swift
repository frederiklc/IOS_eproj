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
            VStack {
                Text("Her skal der være noget Web-hentning")
                
                Button(action: {
                    ViewRoute.pageView = .page2
                }) {
                    ButtonStand(ButtText: "www.pornhub.com") // <-------
                }
            }
        }
    }
    
    struct Possiblerecipes_Previews: PreviewProvider {
        static var previews: some View {
            Possiblerecipes(ViewRoute: viewRouter())
        }
    }
}
