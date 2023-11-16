//
//  Appetizer.swift
//  appetizers
//
//  Created by Agustin Carbajal on 16/11/2023.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request:[Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Chips",
                                           description: "Estos es  una descripcion",
                                           price: 100,
                                           imageURL: "",
                                           calories: 15,
                                           protein: 10,
                                           carbs: 12)
    
    static let appetizers: [Appetizer] = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
