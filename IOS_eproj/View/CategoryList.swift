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

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
