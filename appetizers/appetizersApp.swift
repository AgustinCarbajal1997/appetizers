//
//  appetizersApp.swift
//  appetizers
//
//  Created by Agustin Carbajal on 16/11/2023.
//

import SwiftUI

@main
struct appetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizersTabView()
                .environmentObject(order) // le estamos inyectando el estado global
        }
    }
}
