//
//  IngredientList.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

struct Possiblerecipes: View {
    
    //@StateObject var ViewRoute: viewRouter
    
    var body: some View {
        
        VStack {
            NavigationLink(destination: MainPageView(), label: {
            })
            
            
            Text("Her skal der være noget Web-hentning")
        }
        .navigationTitle("Possible recipes")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct Possiblerecipes_Previews: PreviewProvider {
    static var previews: some View {
        Possiblerecipes()
        //Possiblerecipes(ViewRoute: viewRouter())
    }
}

