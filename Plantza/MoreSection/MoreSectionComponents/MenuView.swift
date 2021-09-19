//
//  MenuView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 18/09/21.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        
        VStack  {
            
            Group {
                
                MenuCell(title: "Order History", destination: AnyView(OrderHistoryView()))
                
                Divider()
                
                MenuCell(imageName: "questionmark.circle.fill", title: "FAQ / Contact", destination: AnyView(FAQView())
                )
                
                Divider()
                
                MenuCell(title: "Covid-19 Measures", destination: AnyView(CovidMeasuresView()))
                
                Divider()
                
                MenuCell(imageName: "heart.text.square.fill", title: "User Posts", destination: AnyView(UserPostsView()))
                
            }
            
            Divider()
            
            MenuCell(imageName : "doc.text.fill" ,title: "Privacy Policy", destination: AnyView(PrivacyPolicyView()))
            
            Divider()
            
            MenuCell(imageName : "doc.text.fill" , title: "Terms of Service", destination: AnyView(TermsView()))
            
            
            
        }
        .padding(16)
        .background(BlurView(style: .systemMaterial).opacity(0.5))
        
        .background(Color("Background 1 Light").opacity(0.2))
        
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
        )
        .shadow(color: Color("Primary").opacity(0.9), radius:60, x:0, y:30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
