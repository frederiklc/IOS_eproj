//
//  MainPageView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

struct MainPageView: View {
    
    @StateObject var ViewRoute: viewRouter
    
    var body: some View {
        ZStack {
            VStack() {
                Text("Velkommen til NoWaste Recipes")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                Spacer()
                    .frame(height: 18.0)
                
                Image(systemName: "swift")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                
                Spacer()
                    .frame(height: 10)
                
                Button(action: {
                    ViewRoute.pageView = .page2
                    
                }) {
                    NextButton() // <-------
                }
                Text("side 1")

            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView(ViewRoute: viewRouter()) // Opdaterer denne views' preview struct med viewrouter som parameter
    }
}
