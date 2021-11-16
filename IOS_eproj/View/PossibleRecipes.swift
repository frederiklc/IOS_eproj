//
//  IngredientList.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

struct IngredientList: View {
    
    @StateObject var ViewRoute: viewRouter
    
    var body: some View {
        Text("Her skal der være noget Web-hentning")
    }
    
    struct IngredientList_Previews: PreviewProvider {
        static var previews: some View {
            IngredientList(ViewRoute: viewRouter())
        }
    }
}
