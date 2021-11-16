//
//  ModelData.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import Foundation
import SwiftUI

struct ButtonStand: View {
    var ButtText: String
    var body: some View {
        Text("\(ButtText)")
            .frame(width: 200.0, height: 20.0)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
    }
    init(ButtText: String) {
        self.ButtText = ButtText
    }
}

// Image(systemName: "chevron.right.circle")

struct backButton: View {
    var body: some View {
        Group {
            HStack {
                Image(systemName: "chevron.right.circle")
                    .frame(width: 2.0, height: 2.0)
                    .rotationEffect(.degrees(180))
                Text("Retur")
                    .font(.footnote)
                    .padding(.leading, 5.0)
            }
            .padding(.top, -30.0)
            .padding(.leading, -130.0)
        }
    }
}

// ********** Amount of views  **********

enum Pages {
    case page1
    case page2
    case page3
    case page4
    // her tilføjes flere cases, når flere views er oprettet
}

// ********** view navigator **********

class viewRouter: ObservableObject {
    
    @Published var pageView: Pages = .page1 // fortæller contentView at den skal opdatere dens indhold/body, med MainPageView som default
}
