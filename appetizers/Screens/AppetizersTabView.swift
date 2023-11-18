//
//  ContentView.swift
//  appetizers
//
//  Created by Agustin Carbajal on 16/11/2023.
//

import SwiftUI

struct AppetizersTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            AppetizersListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                        
                }
                .badge(order.items.count)
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }.accentColor(.brandPrimary) // mira como tiñe con este color los detalles
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersTabView()
            .environmentObject(Order())
    }
}
