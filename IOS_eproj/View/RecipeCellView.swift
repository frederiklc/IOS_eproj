//
//  RecipeCellView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import SwiftUI

struct RecipeCellView: View {
    
    // the recipe constant takes in a recipe cell from the view model and displays them
    let recipe: RecipeViewModel
    
    var body: some View {
        HStack {
            AsyncImage(url: recipe.imageUrl) { image in // Async = lazy load
                image.resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            } placeholder: {
                ProgressView()
            }
            Text(recipe.title)
        }
    }
}
