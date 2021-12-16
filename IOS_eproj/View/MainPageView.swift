//
//  MainPageView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

struct MainPageView: View {
    
    var body: some View {
        NavigationView {
            VStack() {
                
                Text("FOODSTER")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("bgColor"))
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 100)
                    
                Image("FridgeOpen")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                    .clipShape(Rectangle())
                    .shadow(color: .black, radius: 8, x: 8, y: 8)
                
                Spacer()
                    .frame(height: 150)
                
                Button(action: {})
                {
                     NavigationLink(destination: AddIngredient()) {
                         ButtonStand(ButtText: "Add ingredients")
                     }
                }
                .buttonStyle(ResizeButt())
                .shadow(color: .gray, radius: 8, x: 8, y: 8)
                
                Spacer()
                    .frame(height: 20)
                
                Button(action: {})
                {
                     NavigationLink(destination: CategoryList()) {
                         ButtonStand(ButtText: "Possible Recipes")
                     }
                 }
                .buttonStyle(ResizeButt())
                .shadow(color: .gray, radius: 8, x: 8, y: 8)
                
                Spacer()
                    .frame(height: 20)
            }
            .padding(.all)
        }
    }
}
