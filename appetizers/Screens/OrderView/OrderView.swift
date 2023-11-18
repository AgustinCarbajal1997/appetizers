//
//  OrdersView.swift
//  appetizers
//
//  Created by Agustin Carbajal on 16/11/2023.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.appetizers
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { // no hace falta id porque lo lee por defecto. Usamos for each porque vamos a agregar un swipe
                        appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform:  { indexSet in
                        orderItems.remove(atOffsets: indexSet)
                    })
                }
                .listStyle(PlainListStyle())
                
                Button{
                    print("Order placed")
                } label: {
                    ApButton(title: "PlaceOrder")
                }
                .padding(.bottom, 20)
            }
            .navigationTitle("🧾Order")
        }
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
