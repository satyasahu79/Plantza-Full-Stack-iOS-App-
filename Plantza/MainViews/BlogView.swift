//
//  BlogView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct BlogView: View {
    
    var blogCards : [BlogData] = blogData
    
//    @ObservedObject var store = BlogDataContentful()
    
    @State private var rotateDegree : CGFloat = 0
    
    var body: some View {
        
        GeometryReader { bounds in
            NavigationView {
                
                ZStack {
                    
                    BlogSectionBackgroud(rotateDegree: $rotateDegree)
                    
                        ScrollView {
                            
                            VStack(alignment: .leading, spacing: 20.0){
                                
                                ForEach(blogCards) { item in
                                    NavigationLink(
                                        destination: BlogDetailView(blogDetailData: item),
                                        label: {
                                            BlogCardView(blogCardData: item)
                                        })
                                    
                                }
                                
                            }
                            .navigationTitle("Blog")
                            .frame(width: bounds.size.width )
                            .offset(x: 0, y: 20)
                       
                        }
                    
                   
                    
                    
                    
                }
            
                
                
            }
        }
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView()
    }
}


