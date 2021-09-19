//
//  BlogCardView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct BlogCardView: View {
    
    var blogCardData : BlogData
    
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20.0) {
            Image(blogCardData.image)
                .resizable()
                .scaledToFill()
                .frame(width: 355, height: 180, alignment: .center)
                .clipped()
                .frame(width: 355, height: 180, alignment: .center)
            
            
            
            HStack(alignment: .top) {
              
                VStack(alignment: .leading, spacing: 5.0) {
                    Text(blogCardData.headline)
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text(blogCardData.subhadline)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .font(.subheadline)
                   
                    
                }
                .padding(.horizontal, 10.0)
                .padding(.bottom,30)
                .frame(width : 355)
                
                
            }
           
        }
       
        .background(BlurView(style: .systemMaterial).opacity(0.5))
        
        .background(Color("Background 1 Light").opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(lineWidth: 1)
                .foregroundColor(.black.opacity(0.2))
        )
//        .shadow(color: Color("Primary").opacity(0.9), radius:60, x:0, y:30)
    }
}

struct BlogCardView_Previews: PreviewProvider {
    static var previews: some View {
        BlogCardView(blogCardData: blogData[0])
    }
}
