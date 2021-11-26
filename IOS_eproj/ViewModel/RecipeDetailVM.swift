//
//  RecipeDetailVM.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import Foundation

@MainActor
class RecipeDetailVM: ObservableObject {
    @Published var imageUrl: URL?
    @Published var title: String = ""
    @Published var ingredients: [String] = []
    
    func mergeRecipeDetail(recipeId: String) async {
        
        do { // async function needs try await as we're requesting content from the url
            let mergeRecipeDetail = try await webCall().get(url: template.URLs.recipeById(recipeId)) { data in
                return try? JSONDecoder().decode(detailResponse.self, from: data)
            }
            
            let recipeDetail = mergeRecipeDetail.recipe
            self.imageUrl = URL(string: recipeDetail.imageUrl)!
            self.title = recipeDetail.title
            self.ingredients = recipeDetail.ingredients
            
        } catch {
            print(error)
        }
    }
}
