//
//  IngredientsModel.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import Foundation

struct Ingredients {
    var name: String
    var category: String
    var quantity: Int?
}

struct ListOfIngr{
    var IngrList: [Ingredients] = []
    
    init(name: String, category: String, quantity: Int?){
        let t = Ingredients(name: name, category: category, quantity: quantity)
        self.IngrList.append(t)
    }
}

ListOfIngr(name: "Broccoli", category: "Vegetable")
ListOfIngr(name: "Cucumber", category: "Vegetable")

