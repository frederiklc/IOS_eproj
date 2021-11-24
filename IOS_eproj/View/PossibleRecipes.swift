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
            Text("Possible recipes")
                .fontWeight(.bold)
                .foregroundColor(Color.red)
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

