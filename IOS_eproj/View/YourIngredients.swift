//
//  YourIngredients.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import SwiftUI

struct YourIngredients: View {
    
    //@StateObject var ViewRoute: viewRouter
    
    var body: some View {
        
        VStack {
            /*HStack {
             Button(action: {
             ViewRoute.pageView = .page1
             }) {
             backButton()
             }
             }
             
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
             */
            
            Spacer()
                .frame(height: 10)
            
            Text("List for current ingredients here")
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                .padding(.bottom,100)
                .padding(.top,100)
        }
        .navigationTitle("Your Ingredients")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct YourIngredients_Previews: PreviewProvider {
    static var previews: some View {
        YourIngredients()
        //YourIngredients(ViewRoute: viewRouter())
    }
}
