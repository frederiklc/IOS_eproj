//
//  ContentView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    
    // defining lowest grayscale (black: RGB = 0)
    let color: UIColor = UIColor(red: 29/255.0,
                                 green: 161/255.0,
                                 blue: 242/255.0,
                                 alpha: 1)
    
    @State var animate = false // current state for this view = false until toggled.
    @State var ShowMain = true
    
    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    MainPageView()
                }
                ZStack {
                    Color(color)
                    Image("FridgeOpen")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 85, height: 85)
                        .scaleEffect(animate ? 60 : 1) // if animate is true then scale by 60 otherwise 1
                        .animation(Animation.easeIn(duration: 0.7), value: animate) // value depend on effect
                }
                .edgesIgnoringSafeArea(.all) // fill out color to full screen
                .animation(Animation.easeIn(duration: 2), value: ShowMain) // ease MainPageView post launch
                .opacity(ShowMain ? 2 : 0) // ease in the transition of mainPageView colors
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                animate.toggle() // toggle animate state asap + 0.3 going from false to true on main (UI)
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                ShowMain.toggle()
            }
        }
    }
}

