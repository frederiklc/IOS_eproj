//
//  CategoryCellView.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import SwiftUI

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
