//
//  Template.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import Foundation
    
    struct URLs {
        
        static let categoryURL = URL(string: "https://recipesapi.herokuapp.com/api/v2/categories")! // the force-unwrapper is risky. But in this case we know that the url is correct
        
        static func recipeCatName(_ name: String) -> URL {
            return URL(string: "https://recipesapi.herokuapp.com/api/v2/recipes?q=\(name)&page=1")!
        }
        static func recipeById(_ id: String) -> URL {
            return URL(string: "https://recipesapi.herokuapp.com/api/v2/recipes/\(id)")!
        }
    }
