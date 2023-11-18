//
//  Order.swift
//  appetizers
//
//  Created by Agustin Carbajal on 18/11/2023.
//

import SwiftUI

final class Order: ObservableObject { // no va en un view model sino aca porque va a afectar a varias pantallas
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
          items.reduce(0) { $0 + $1.price }
      }
    
    func add(_ appetizer: Appetizer){ // con el guion bajo evitamos darle un nombre al parametro
        items.append(appetizer)
    }
    
    func delete(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
}
