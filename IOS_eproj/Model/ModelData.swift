//
//  ModelData.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import Foundation
import SwiftUI

struct NextButton: View {
    var body: some View {
        Text("Næste side")
            .frame(width: 200.0, height: 20.0)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
    }
}

struct PreviousButton: View {
    var body: some View {
        return Text("Tilbage")
            .frame(width: 200.0, height: 20.0)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
    }
}

// ********** Page enum  **********

enum Pages {
    case page1
    case page2
    // her tilføjes flere cases, når flere views er oprettet
}

// ********** view navigator **********

class viewRouter: ObservableObject {
    
    @Published var pageView: Pages = .page1 // fortæller contentView at den skal opdatere dens indhold/body, med MainPageView som default
    
}
