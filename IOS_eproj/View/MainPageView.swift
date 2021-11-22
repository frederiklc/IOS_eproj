//
//  MainPageView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

struct MainPageView: View {
    
    //@StateObject var ViewRoute: viewRouter
    
    var body: some View {
        NavigationView {
            VStack() {
                
                Text("iFridge")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                //.padding(20)
                
                Spacer()
                    .frame(height: 18.0)
                
                Image(systemName: "swift")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                
                Spacer()
                    .frame(height: 10)
                
                NavigationLink(destination: YourIngredients(), label: {
                    Text("Your ingredients")
                        .foregroundColor(Color.black)
                })
                    .padding()
                NavigationLink(destination: AddIngredient(), label: {
                    Text("Add ingredients")
                        .foregroundColor(Color.black)
                })
                    .padding()
                NavigationLink(destination: Possiblerecipes(), label: {
                    Text("Possible recipes")
                        .foregroundColor(Color.black)
                })
                    .padding()
                /*
                 Button(action: {
                 ViewRoute.pageView = .page2
                 }) {
                 ButtonStand(ButtText: "Your ingredients") // <-------
                 }
                 Button(action: {
                 ViewRoute.pageView = .page3 // AddIngredient
                 }) {
                 ButtonStand(ButtText: "Add Ingredients") // <-------
                 }
                 Button(action: {
                 ViewRoute.pageView = .page4
                 }) {
                 ButtonStand(ButtText: "Possible recipes") // <-------
                 }
                 }
                 .padding()
                 */
            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
        //MainPageView(ViewRoute: viewRouter()) // Opdaterer denne views' preview struct med viewrouter som parameter
    }
}
