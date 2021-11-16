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
                .padding(.top, -350)
                
                VStack() {
                    Spacer()
                        .frame(height: 18.0)
                    
                    
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
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("Liste her")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.bottom,100)
                        .padding(.top,100)
                }
            }
            .navigationTitle("Your Ingredients")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct YourIngredients_Previews: PreviewProvider {
    static var previews: some View {
        YourIngredients(ViewRoute: viewRouter())
    }
}
