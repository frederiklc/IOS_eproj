//
//  Webcall.swift
//  IOS_eproj
//
//  Created by Frederik Lindvig Christensen on 25/11/2021.
//

import Foundation

enum error: Error {
    case badRequest
    case decodingError
}

class webCall {
    // get-function which can get anything which is decodable. This function passes in an URL and parse of the data and return what ever the type is (generic) and lastly return something.
    func get<T: Decodable>(url: URL, parse: (Data) -> T?) async throws -> T {
        
        // We have to define the parameters of above get-function which needs to return us data and a response when requesting url-fetch. The 'try await' is due to the async function above
        let (data, response) = try await URLSession.shared.data(from: url)
        
        // error handling:
        if (response as? HTTPURLResponse)?.statusCode != 200 {
            throw error.badRequest
        }
        
        guard let result = parse(data) else {
            throw error.decodingError
        }
        return result
    }
    
}

// get data  and decode it


