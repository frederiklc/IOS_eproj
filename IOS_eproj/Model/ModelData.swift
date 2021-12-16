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

