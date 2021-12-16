//
//  RecipeListVM.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import Foundation

@MainActor // everything within recipeListVM will be called on the main thread
class recipeListVM: ObservableObject {

    @Published var recipes: [RecipeViewModel] = [RecipeViewModel]()
    
    // the function which returns us the recipes
    func mergeRecipeByCategory(name: String) async {
        
        do { // async function needs try a$wait as we're requesting content from the url
            let RecipeResponse = try await webCall().get(url: URLs.recipeCatName(name)) { data in
                return try? JSONDecoder().decode(recipeResponse.self, from: data)
            }
            self.recipes = RecipeResponse.recipes.map(RecipeViewModel.init)
            
        } catch {
            print(error)
        }
    }
}

struct RecipeViewModel {
    
    private let recipe: Recipe

    init(_ recipe: Recipe) {
        self.recipe = recipe
    }
    
    var id: String {
        recipe.id
    }
    
    var title: String {
        recipe.title
    }
    
    var imageUrl: URL? {
        URL(string: recipe.imageUrl)
    }
}
