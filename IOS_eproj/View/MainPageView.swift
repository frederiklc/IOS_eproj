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
                //.padding(20)
                
                Spacer()
                    .frame(height: 100)
                    
                Image("fridgeOpen")
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
                
                  /*
                   
                   NavigationLink(destination: AddIngredient(), label: {
                       Text("Add ingredients")
                           .bold()
                           .frame(width: 250, height: 50)
                           .foregroundColor(Color.white)
                           .background(Color.blue)
                           .cornerRadius(10)
                   })
                   
                   NavigationLink(destination: CategoryList(), label: {
                       Text("Possible recipes")
                           .bold()
                           .frame(width: 250, height: 50)
                           .foregroundColor(Color.white)
                           .background(Color.blue)
                           .cornerRadius(10)
                   })
                 */
            }
            .padding(.all)
        }
    }
}


struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
        //MainPageView(ViewRoute: viewRouter()) // Opdaterer denne views' preview struct med viewrouter som parameter
    }
}
