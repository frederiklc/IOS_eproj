//
//  DetailScreen.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import SwiftUI

struct DetailScreen: View {
    
    let recipeId: String
    let bounds = UIScreen.main.bounds

    @StateObject private var recipeDetailVM = RecipeDetailVM() // class RecipeDetailVM can update the view by image, title and description
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: recipeDetailVM.imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: bounds.width - 20)
                    .clipShape(RoundedRectangle(cornerRadius: 60, style: .continuous))
            } placeholder: {
                ProgressView()
            }
            .padding(.bottom, 20)
            ForEach(recipeDetailVM.ingredients, id: \.self) {
                Ingredients in
                Text(Ingredients)
            }
            Spacer()
        }
        .padding()
        .task {
            await recipeDetailVM.mergeRecipeDetail(recipeId: recipeId)
        }
    }
}
