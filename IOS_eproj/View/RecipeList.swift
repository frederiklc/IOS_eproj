//
//  RecipeList.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import SwiftUI

// this screen will be responsible for displaying the next view, when category is clicked (se det som en spil kort; når jeg fjerner første side, categoryList, så skifter jeg nyt kort)
struct RecipeList: View {
    
    let recipeCategory: categoryViewModel
    @StateObject private var RecipeListVM = recipeListVM()
    
    var body: some View {
        RecipeListView(recipes: RecipeListVM.recipes)
            .task {
                await RecipeListVM.mergeRecipeByCategory(name: recipeCategory.title)
            }
    }
}

// displays all the recipes
struct RecipeListView: View {
    
    // passing in all the recipes from recipe view model
    let recipes: [RecipeViewModel]
    
    var body: some View {
        List(recipes, id: \.id) { recipe in
            NavigationLink(destination: DetailScreen(recipeId: recipe.id).navigationTitle(recipe.title)) {
                RecipeCellView(recipe: recipe)
            }
        }
    }
}

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

/*struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        
        let CategoryVM = categoryViewModel(RecipeCategory(strCategory: "Beef", strCategoryThumb: "https://www.themealdb.com//images//category//beef.png"))
        
        RecipeList(recipeCategory: CategoryVM)
    }
} */
