//
//  AddToCartButton.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct AddToCartButton: View {
    
    
    
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 5.0) {
            
            
            Group {
                Spacer()
                Image(systemName: "bag.badge.plus")
                    .font(.title3.weight(.light))
                    .padding(.horizontal, 4)
                Text("Add to Cart")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
            }
            .offset(x:-10)
        }
        .padding(.vertical, 12)
        .background(Color("Background 1 Light").opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
        )
        .frame(width:145)
        
        
        
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton()
    }
}
