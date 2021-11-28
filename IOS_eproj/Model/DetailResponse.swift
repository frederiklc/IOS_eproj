//
//  DetailResponse.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 26/11/2021.
//

import Foundation
// all this is sent to the detail RecipeDetailVM
struct detailResponse: Decodable {
    let recipe: RecipeDetail
}

struct RecipeDetail: Decodable {
    let imageUrl: String
    let id: String
    let title: String
    let ingredients: [String]
}
