//
//  AddIngredient.swift
//  IOS_eproj
//
//  Created by Kristian Andersen on 16/11/2021.
//

import SwiftUI
import UIKit

struct AddIngredient: View {
    //@StateObject var ViewRoute: viewRouter
    @Environment(\.managedObjectContext) private var viewContext
    @State private var IngredientName: String = ""
    @State private var IngredientQuantity: String = ""
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Ingredients.name, ascending: true)],
        animation: .default)
    private var ingredientslist: FetchedResults<Ingredients>
    
    var body: some View {
        VStack {
                TextField("Type Ingredient", text: $IngredientName)
                    .textFieldStyle(.roundedBorder)
                TextField("Type quantity", text: $IngredientQuantity)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                Button(action: addIngredient) {
                    Label("", systemImage: "plus")
                }
            }.padding()
            
            List{
                ForEach(ingredientslist) { Ingredients in
                    var StringOfIngr: String = "\(Ingredients.quantity)x \(Ingredients.name ?? "")"
                    Text(StringOfIngr)
                }.onDelete(perform: deleteIngredient)
            }
            .navigationTitle("Add your Ingredients")
        }
    
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
            newIngredient.quantity = Int64(IngredientQuantity) ?? 0
            PersistenceController.shared.saveContext()
        }
    }
}

struct AddIngredient_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredient().environment(\.managedObjectContext,
                                     PersistenceController.preview.container.viewContext)
        //AddIngredient(ViewRoute: viewRouter())
    }
}


