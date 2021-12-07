//
//  AddIngredientVM.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 30/11/2021.
//

import Foundation
import SwiftUI

/*class AddIngredientViewModel: ObservableObject {
    
    @Published var IngredientName: String = ""
    @Published var IngredientQuantity: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Ingredients.name, ascending: true)],
        animation: .default)
    var ingredientslist: FetchedResults<Ingredients>
    
    func deleteIngredient(offsets: IndexSet) {
        withAnimation {
            offsets.map { ingredientslist[$0] }.forEach(viewContext.delete)
            PersistenceController.shared.saveContext()
        }
    }
    func addIngredient() {
            let newIngredient = Ingredients(context: viewContext)
            newIngredient.name = IngredientName
            newIngredient.quantity = Int64(IngredientQuantity) ?? 0
            PersistenceController.shared.saveContext()
    }
}*/
