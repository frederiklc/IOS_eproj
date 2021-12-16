//
//  CategoryViewModel.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import Foundation


@MainActor // all properties of categoryListVM will be called on the main thread
class categoryListVM: ObservableObject {
    
    @Published var Categories: [categoryViewModel] = []
    
    func populateCategories() async {
        
        do { // async function needs try await as we're requesting content from the url
            let CategoryResponse = try await webCall().get(url: URLs.categoryURL) { data in
                return try? JSONDecoder().decode(categoryResponse.self, from: data)
            }
            self.Categories = CategoryResponse.categories.map(categoryViewModel.init)
            
        } catch {
            print(error)
        }
    }
}


struct categoryViewModel: Identifiable { // identifiable so we can loop through it
    
    let id = UUID()
    private let Category: RecipeCategory
    
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
