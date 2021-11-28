//
//  CategoryResponse.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import Foundation

// model for displaying our categories, on one specific view (CategoryListVM)

struct categoryResponse: Decodable {
    
    let categories: [RecipeCategory]
}

struct RecipeCategory: Decodable {
    // within the API we identify that name and title of the recipes are necessary to decode for our webcall-model
    let title: String // "chicken"
    let imageUrl: String // imageurl
    
}
