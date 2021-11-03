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
                    ViewRoute.pageView = .page1
                    
                }) {
                    PreviousButton() // <-------
                }
                Text("side 2")

            }
        }
    }
}

struct IngredientList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientList(ViewRoute: viewRouter())
    }
}
