//
//  OrdersView.swift
//  appetizers
//
//  Created by Agustin Carbajal on 16/11/2023.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            
            ZStack{
                VStack {
                    List {
                        ForEach(order.items) { // no hace falta id porque lo lee por defecto. Usamos for each porque vamos a agregar un swipe
                            appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.delete)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("Order placed")
                    } label: {
                        ApButton(title: "\(order.totalPrice, specifier: "%.2f") - PlaceOrder")
                    }
                    .padding(.bottom, 20)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "There are no orders at the current moment")
                }
            }
            .navigationTitle("🧾Order")
        }
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
