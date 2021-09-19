//
//  SignOutButton.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct PrimaryButton: View {
    
    @State  var imageName : String = "envelope"
    @State  var text : String = "Placeholder"
    
     
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 5.0) {
                
                
            Group {
                Spacer()
                Image(systemName: imageName)
                    .font(.title2.weight(.light))
                    .padding(8)
                Text(text)
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            .offset(x:-10)
                
            }
            .padding(10)
            .background(Color("Background 1 Light").opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
            )
        
        
    }
}

struct SignOutButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton()
    }
}
