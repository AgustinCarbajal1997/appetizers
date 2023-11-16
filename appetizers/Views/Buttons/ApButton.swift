//
//  ApButton.swift
//  appetizers
//
//  Created by Agustin Carbajal on 16/11/2023.
//

import SwiftUI

struct ApButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {

            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260, height: 50)
                .foregroundColor(.white)
                .background(Color.brandPrimary)
                .cornerRadius(10)
        
        
    }
}

struct ApButton_Previews: PreviewProvider {
    static var previews: some View {
        ApButton(title: "Tap me")
    }
}
