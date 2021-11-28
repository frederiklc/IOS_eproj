//
//  ContentView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

// rootView here

import SwiftUI

struct ContentView: View {
    
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    
    // defining lowest grayscale (black: RGB = 0)
    let color: UIColor = UIColor(red: 0,
                                 green: 0,
                                 blue: 0,
                                 alpha: 1)
    
    @State var animate = false // current state for this view = false until toggled.
    @State var ShowMain = true
    
    //@StateObject var ViewRoute: viewRouter // Her giver vi muligheden for ContentView at "observere" ViewRouter, vis views er koblet op på vores ObservableObject i ModelData.
    /*
     @Environment(\.managedObjectContext) private var viewContext
     
     @FetchRequest(
     sortDescriptors: [NSSortDescriptor(keyPath: \Ingredients.name, ascending: true)],
     animation: .default)
     private var items: FetchedResults<Ingredients>
     */
    var body: some View { // angiv herunder vores views, med lignende parametre
        VStack {
            ZStack {
                // content
                ZStack {
                    MainPageView()
                }
                // zoom-animation
                ZStack {
                    Color(color)
                    Image("IntroLove")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 85, height: 85)
                        .scaleEffect(animate ? 50 : 1) // if animate is true then scale by 50 otherwise 1
                        .animation(Animation.easeIn(duration: 0.7), value: animate) // value depend on effect
                    //.animation(Animation.easeIn(duration: 1.5)) not applicable
                }
                .edgesIgnoringSafeArea(.all) // fill out color to full screen
                .animation(Animation.easeIn(duration: 2), value: ShowMain) // ease MainPageView post launch
                .opacity(ShowMain ? 1 : 0) // ease in the transition of mainPageView colors
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
                animate.toggle() // toggle animate state asap + 0.3 going from false to true on main (UI)
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                ShowMain.toggle()
            }
        }
        /* switch ViewRoute.pageView {
         case .page1:
         MainPageView(ViewRoute: ViewRoute)
         case .page2:
         YourIngredients(ViewRoute: ViewRoute)
         case .page3:
         AddIngredient(ViewRoute: ViewRoute)
         }*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
        /*ContentView(ViewRoute: viewRouter()).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext) */
    }
}

