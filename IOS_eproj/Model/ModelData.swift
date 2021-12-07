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
            .bold()
            .frame(width: 250, height: 20)
            .foregroundColor(Color.white)
            //.cornerRadius(10)
    }
    init(ButtText: String) {
        self.ButtText = ButtText
    }
}

struct ResizeButt: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .shadow(color: .green, radius: 10, x: 10, y: 10)
            )
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

// Image(systemName: "chevron.right.circle")

struct backButton: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.right.circle")
                .frame(width: 2.0, height: 2.0)
                .rotationEffect(.degrees(180))
                .foregroundColor(.blue)
            Text("Retur")
                .font(.footnote)
                .padding(.leading, 5.0)
        }
    }
}


/*
Image("ShoppingCart")
    .resizable()
    .aspectRatio(contentMode: .fit)
    .frame(width: 85, height: 85)
    .scaleEffect(animate ? 60 : 1) // if animate is true then scale by 50 otherwise 1
    .animation(Animation.easeIn(duration: 0.7), value: animate) // value depend on effect
*/

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
