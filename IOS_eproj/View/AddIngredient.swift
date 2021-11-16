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
                Text("Hej")
            }
            
        }
    }
}


struct AddIngredient_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredient(ViewRoute: viewRouter())
    }
}
