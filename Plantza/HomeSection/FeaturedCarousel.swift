//
//  FeaturedCarousel.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 21/09/21.
//

import SwiftUI




struct FeaturedCarousel: View {
    
    var products : [Product] = productData
    
    private func getScale (proxy : GeometryProxy) -> CGFloat    {
        var scale : CGFloat = 1
        
        let x = proxy.frame(in: .global).minX
        
        let diff = abs(x-60)
        
        if diff < 100 {
            scale = 1 + (100-diff)/500
        }
        return scale
    }
    
    var body: some View {
        
     
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack(spacing: 1.0){
                    ForEach(products) { item in
                        
                        GeometryReader { proxy in
                            
                            
                            let scale = getScale(proxy: proxy)
                            
                            FeaturedCardView(product: item, rotateDegree: 0)
                                .scaleEffect(CGSize(width: scale, height: scale))
                            
                                .animation(Animation.easeInOut(duration: 0.7))
                            
                        }
                        .padding()
                        .frame(width : 320 , height : 300)
                      
                    }
                
                
                }.padding(50)
                
            })
         
            
     
        
    }
    
    
    
}

struct FeaturedCarousel_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedCarousel()
    }
}


