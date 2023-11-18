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
                                           name: "Chips 1",
                                           description: "Estos es  una descripcion demasiado larga para ser considerada por favor seguir agregando datos",
                                           price: 100,
                                           imageURL: "",
                                           calories: 15,
                                           protein: 10,
                                           carbs: 12)
    
    static let sampleAppetizer1 = Appetizer(id: 0002,
                                           name: "Chips 2",
                                           description: "Estos es  una descripcion demasiado larga para ser considerada por favor seguir agregando datos",
                                           price: 100,
                                           imageURL: "",
                                           calories: 15,
                                           protein: 10,
                                           carbs: 12)
    static let sampleAppetizer2 = Appetizer(id: 0003,
                                           name: "Chips 3",
                                           description: "Estos es  una descripcion demasiado larga para ser considerada por favor seguir agregando datos",
                                           price: 100,
                                           imageURL: "",
                                           calories: 15,
                                           protein: 10,
                                           carbs: 12)
    static let sampleAppetizer3 = Appetizer(id: 0004,
                                           name: "Chips 4",
                                           description: "Estos es  una descripcion demasiado larga para ser considerada por favor seguir agregando datos",
                                           price: 100,
                                           imageURL: "",
                                           calories: 15,
                                           protein: 10,
                                           carbs: 12)
    
    static let appetizers: [Appetizer] = [sampleAppetizer1, sampleAppetizer2, sampleAppetizer3]
}
