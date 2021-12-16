//
//  CategoryList.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import SwiftUI

struct CategoryList: View {
    
    @StateObject var model: categoryListVM = categoryListVM()
    
    var body: some View {
            // display our category list view
            CategoryListView(categories: model.Categories)
                .task {
                    await model.populateCategories()
                }
                .navigationTitle("Recipes")
                .navigationBarTitleDisplayMode(.inline)
    }
}

struct CategoryListView: View {
    // from the categorylist view there's no way to go to a different url. We then implement a navigationlink to always go a specific destination
    let categories: [categoryViewModel]
    
    var body: some View {
        List(categories) { category in
            NavigationLink(destination: RecipeList(recipeCategory: category).navigationTitle(category.title)) {
                CategoryCellView(recipeCategory: category)
            }
        }.listStyle(.plain)
    }
}

struct CategoryCellView: View {
    
    let recipeCategory: categoryViewModel
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: recipeCategory.imageUrl) { image in // Async = lazy load
                image.resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            } placeholder: {
                ProgressView()
            }
            Text(recipeCategory.title)
        }
    }
}

