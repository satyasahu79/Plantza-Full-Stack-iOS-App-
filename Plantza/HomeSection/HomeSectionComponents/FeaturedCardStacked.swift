//
//  FeaturedCardStacked.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct FeaturedCardStacked: View {
    
    var product : Product = productData[1]
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                BackgroundFeaturedRect(width: 190, height: 190, shadowStroke: 0.05, xOffset: 60)
                
                BackgroundFeaturedRect(width: 210, height: 210, shadowStroke: 0.075, xOffset: 40)
                
                
                BackgroundFeaturedRect(width: 230, height: 230, shadowStroke: 0.1, xOffset: 20)
                
               FeaturedCardView(product: product)
            }
        }
    }
}

struct FeaturedCardStacked_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedCardStacked()
    }
}

struct BackgroundFeaturedRect: View {
    
    var width : CGFloat = 250
    var height : CGFloat = 250
    var shadowStroke : Double = 1
    var xOffset : CGFloat = 20
    
    var body: some View {
        HStack {
        }
        .frame(width: width, height: height, alignment: .center)
        .padding(.horizontal, 15)
        .background(BlurView(style: .light).opacity(0.8))
        .background(Color("Background 1 Light").opacity(0.4))
        
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black.opacity(shadowStroke),lineWidth: 1.0)
        )
        
        .shadow(color: Color("Primary").opacity(0.2), radius:30, x:0, y:15)
        
        .offset(x: xOffset, y: 0)
    }
}
