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
        VStack {
            HStack {
                Button(action: {
                    ViewRoute.pageView = .page1
                }) {
                    backButton()
                }
            }
            .padding(.leading, -140.0)
            .padding(.top, -30.0)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct AddIngredient_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredient(ViewRoute: viewRouter())
    }
}
