//
//  AddIngredient.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import SwiftUI
import UIKit

struct AddIngredient: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    //@StateObject private var AddIngr = AddIngredientViewModel()
    
    @State var IngredientName: String = ""
    @State var IngredientQuantity: String = ""
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Ingredients.name, ascending: true)],
        animation: .default)
    var ingredientslist: FetchedResults<Ingredients>
    
    var body: some View {
        VStack {
            TextField("Type Ingredient", text: $IngredientName)
                .textFieldStyle(.roundedBorder)
            TextField("Type quantity", text: $IngredientQuantity)
                .textFieldStyle(.roundedBorder)
            Button(action: addIngredient) {
                Label("Add new ingredient", systemImage: "plus")
            }
        }.padding()
        
        List{
            ForEach(ingredientslist) { Ingredients in
                let StringOfIngr: String = "\(Ingredients.quantity)x \(Ingredients.name ?? "")"
                Text(StringOfIngr)
            }.onDelete(perform: deleteIngredient)
        }
        .navigationTitle("Add your Ingredients")

    }
    
    func deleteIngredient(offsets: IndexSet) {
        // Ingredients.quantity.remove(atOffsets: index)?
        // Ingredients.name.remove(atOffsets: index)?
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
}

struct AddIngredient_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredient().environment(\.managedObjectContext,
                                     PersistenceController.preview.container.viewContext)
    }
}
