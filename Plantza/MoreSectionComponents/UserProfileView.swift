//
//  UserProfileView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 18/09/21.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(spacing: 16.0) {
                Image("Avatar")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 66.0, height: 66.0)
                    .overlay(
                        Circle()
                            .stroke(Color.black.opacity(0.2),lineWidth: 1)
                    )
                Text("Robert Fox")
                    .font(.title2)
                    .fontWeight(.bold)
                
                
                Spacer()
                
                SmallButton()
                
            }   // HStack Ends
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16.0){
                VStack(alignment: .leading, spacing: 8.0){
                    HStack {
                        Image(systemName: "location.fill")
                            .opacity(0.3)
                        Text("Address")
                        Spacer()
                    }.font(.footnote)
                    
                    Text("6 Field Close, Seaford, BN25 4DN")
                        .font(.body)
                }
                
                
                HStack {
                    Image(systemName: "envelope")
                        .opacity(0.3)
                    Text("trungkienspktnd@gamail.com")
                    Spacer()
                }.font(.subheadline)
                
            }
            
        }
        .padding(16)
        
        .background(Color("Background 1 Light").opacity(0.4))
        .background(BlurView(style: .light).opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
        )
        
        .shadow(color: Color("Primary").opacity(0.5), radius:60, x:0, y:30)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
