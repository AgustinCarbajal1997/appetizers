//
//  AppetizerDetailView.swift
//  appetizers
//
//  Created by Agustin Carbajal on 16/11/2023.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                
                HStack(spacing: 40){
                    VStack(spacing: 5){
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .italic()
                            
                    }
                    VStack(spacing: 5){
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.carbs)")
                            .foregroundColor(.secondary)
                            .italic()
                            
                    }
                    VStack(spacing: 5){
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.protein)")
                            .foregroundColor(.secondary)
                            .italic()
                            
                    }
                }
            }
            
            Spacer()
            
            Button{
                print("tapped")
            }label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{ isShowingDetail = false } label: {
            ZStack{
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.medium)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)// aunque no se ve, se lo hace mas grande que el circulo para que en caso  de que el usuario aprete un poquito por fuera, tambien se ejecute
            }
        }, alignment: .topTrailing)
        
            
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}
