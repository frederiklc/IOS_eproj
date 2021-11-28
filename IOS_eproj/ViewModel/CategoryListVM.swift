//
//  CategoryViewModel.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import Foundation

// maps and displays the categories on the categoryViewModel

@MainActor // all properties of categoryListVM will be called on the main thread
class categoryListVM: ObservableObject {
    
    // creating an array of the category viewmodel below
    @Published var Categories: [categoryViewModel] = []
    
    
    func populateCategories() async {
        
        do { // async function needs try await as we're requesting content from the url
            let CategoryResponse = try await webCall().get(url: template.URLs.categoryURL) { data in
                return try? JSONDecoder().decode(categoryResponse.self, from: data)
            }
            // when we get the category response, we can map the identical values from the API to the view model. This returns us the categories of the recipes ([categoryViewModel] = []) Here we assign the @Published var on the main thread. Instead of using DispatchQueue.main, we write @MainActor above this class
            self.Categories = CategoryResponse.categories.map(categoryViewModel.init)
            
        } catch {
            print(error)
        }
    }
}


struct categoryViewModel: Identifiable { // identifiable so we can loop through it
    
    let id = UUID()
    private let Category: RecipeCategory
    
    // using an initializer as our Category-var is private and non-accessible for other structs or views, meaning that we only allow title and imageURL to be displayed between views
    init(_ Category: RecipeCategory) {
        self.Category = Category
    }
    var title: String {
        Category.title
    }
    
    var imageUrl: URL? {
        URL(string: Category.imageUrl)
    }
    
    
}
