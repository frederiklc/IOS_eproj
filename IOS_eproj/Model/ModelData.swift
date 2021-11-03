//
//  ModelData.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 03/11/2021.
//

import Foundation
import SwiftUI

struct buttonDesign: View {
    
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(label, action: {
            return self.action()
        })
            .frame(width: 200.0, height: 40.0)
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(8)
    }
}

struct buttonNewView {
    
}

struct buttonPrevView {
    
}
