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

/*struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        
        let CategoryVM = categoryViewModel(RecipeCategory(strCategory: "Beef", strCategoryThumb: "https://www.themealdb.com//images//category//beef.png"))
        
        RecipeList(recipeCategory: CategoryVM)
    }
} */
