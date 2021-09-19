//
//  BlogDetailView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct BlogDetailView: View {
    
    @State private var rotateDegree : CGFloat = 0
    var blogDetailData : BlogData = blogData[1]
    
    var body: some View {
        
        ZStack {
            
            BlogSectionBackgroud(rotateDegree: $rotateDegree)
            
        GeometryReader { bounds in
           
                ScrollView(showsIndicators : false) {
                    
                    VStack(spacing: 30.0)  {
                        
                        Image(blogDetailData.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: bounds.size.width,height: 220)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
                        
                        
                        VStack(alignment: .leading, spacing: 10.0){
                            Text(blogDetailData.headline)
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Text(blogDetailData.body)
                          
                                
                                
                                
                            
                        }
                        .padding(.leading, 15.0)
                        .padding(.trailing,10)
                        .padding(.vertical, 20.0)
                        
                        .background(BlurView(style: .light).opacity(0.3))
                        .background(Color("Background 1 Light").opacity(0.4))
                        
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
                        )
                        
                        .shadow(color: Color("Primary").opacity(0.5), radius:60, x:0, y:30)
                        
                    }
                    .padding(.top,20)
                    
                    .navigationTitle(blogDetailData.headline)
                    .navigationBarTitleDisplayMode(.inline)
                    
                }
            
            
            
        }.padding(.horizontal,20)
        
        }
    }
        
}

struct BlogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BlogDetailView()
    }
}
