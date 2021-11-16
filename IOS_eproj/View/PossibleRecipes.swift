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
        Text("Her skal der være noget Web-hentning")
    }
    
    struct Possiblerecipes_Previews: PreviewProvider {
        static var previews: some View {
            Possiblerecipes(ViewRoute: viewRouter())
        }
    }
}
