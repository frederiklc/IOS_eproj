//
//  AddIngredientVM.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 30/11/2021.
//

import Foundation
import UIKit
import SwiftUI

/*class AddIngredientViewModel: ObservableObject {
    @Environment(\.managedObjectContext) private var viewContext
    
    @Published var IngredientsName: String = ""
    @Published var IngredientQuantity: String = ""
    
    private func deleteIngredient(offsets: IndexSet) {
        withAnimation {
            offsets.map { ingredientslist[$0] }.forEach(viewContext.delete)
            PersistenceController.shared.saveContext()
        }
    }
    private func addIngredient() {
        withAnimation {
            let newIngredient = Ingredients(context: viewContext)
            newIngredient.name = IngredientName
            newIngredient.quantity = IngredientQuantity
            PersistenceController.shared.saveContext()
        }
        
    }
    
}*/
