//
//  RecipeListVM.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import Foundation

// this will be responsible for the view which displays the different recipes, when entering that view from the category view

@MainActor // everything within recipeListVM will be called on the main thread
class recipeListVM: ObservableObject {
    // as we now call for a new page of the API, we can still use the same generic webcall function which we created by simply adjusting the information which must be parsed
    
    // creating an array of the recipes view model below
    @Published var recipes: [RecipeViewModel] = [RecipeViewModel]()
    
    // the function which returns us the recipes
    func mergeRecipeByCategory(name: String) async {
        
        do { // async function needs try await as we're requesting content from the url
            let RecipeResponse = try await webCall().get(url: template.URLs.recipeCatName(name)) { data in
                return try? JSONDecoder().decode(recipeResponse.self, from: data)
            }
            // when we get the category response, we can map the identical values from the API to the view model. This returns us the categories of the recipes ([categoryViewModel] = []) Here we assign the @Published var on the main thread. Instead of using DispatchQueue.main, we write @MainActor above this class
            self.recipes = RecipeResponse.recipes.map(RecipeViewModel.init)
            
        } catch {
            print(error)
        }
    }
}

struct RecipeViewModel {
    // the struct takes in the recipe from the API, by id, title and image
    private let recipe: Recipe
    // creating the private let and init because we want nobody else than this struct, to access the model for these specific properties. Hence, the only thing which can be accessed is this view model
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
