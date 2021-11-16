//
//  IngredientsModel.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import Foundation

@propertyWrapper
struct Ingredients {
    private var name: String
    private var category: String
    private var quantity: Int?
    
    var wrappedValue: Any{
        get{ name; category; quantity }
        set{ name = newValue(); category = newValue(); quantity = newValue() }
    }
}

struct ListOfIngr{
    var IngrList: [Ingredients] = []
    
    init(name: String, category: String, quantity: Int?){
        let t = Ingredients(name: name, category: category, quantity: quantity)
        self.IngrList.append(t)
    }
}

