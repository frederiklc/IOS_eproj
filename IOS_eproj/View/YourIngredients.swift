//
//  YourIngredients.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import SwiftUI

struct YourIngredients: View {
    
    @StateObject var ViewRoute: viewRouter
    
    var body: some View {
        ZStack {
            VStack() {
                Text("Markér ingredienser i dit køleskab")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                Spacer()
                    .frame(height: 18.0)
                
                Text("Liste her")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .padding(.bottom,100)
                    .padding(.top,100)
                
                Spacer()
                    .frame(height: 10)
                
                Button(action: {
                    ViewRoute.pageView = .page3
                }) {
                    ButtonStand(ButtText: "Add Ingredient")
                }
                Button(action: {
                    ViewRoute.pageView = .page4
                }) {
                    ButtonStand(ButtText: "Possible Recipes")
                }
            }
        }
    }
}

struct YourIngredients_Previews: PreviewProvider {
    static var previews: some View {
        YourIngredients(ViewRoute: viewRouter())
    }
}
