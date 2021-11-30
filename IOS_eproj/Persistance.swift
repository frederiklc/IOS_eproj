//  Persistence.swift
//  Nytprojekt
//
//  Created by Kristian Andersen on 16/11/2021.
//
import CoreData

struct PersistenceController {
    let container: NSPersistentContainer
    
    static let shared = PersistenceController()
    
    var viewContext: NSManagedObjectContext {
        return container.viewContext
    }
    
    static var preview: PersistenceController {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        let newIngredient = Ingredients(context: viewContext)
        
        shared.saveContext()
        return result
    }

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "CoreDataModel")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    
    func saveContext(completion: @escaping (Error?) -> () = {_ in}) {
        let context = container.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                completion(error)
            }
        }
    }
    
    func delete(_ object: NSManagedObject, completion: @escaping (Error?) -> () = {_ in}){
        let context = container.viewContext
        context.delete(object)
        saveContext(completion: completion)
    }
}

