//
//  RecipeResponse.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import Foundation

// represents the recipes that we're getting from the API

struct recipeResponse: Decodable {
    
    let recipes: [Recipe]
}

struct Recipe: Decodable {
    
    let id: String 
    let title: String // chicken
    let imageUrl: String // strCategoryThumb
    
    // jeg mangler at koble de forskellige API-strings, da de er forskellige
}
