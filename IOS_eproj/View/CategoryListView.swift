//
//  CategoryListView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import SwiftUI

struct CategoryListView: View {
    
    let categories: [categoryViewModel]
    
    var body: some View {
        List(categories) { category in
            CategoryCellView(recipeCategory: category)
        }.listStyle(.plain)
    }
}
