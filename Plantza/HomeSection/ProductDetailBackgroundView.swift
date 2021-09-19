//
//  ProductDetailBackgroundView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 20/09/21.
//

import SwiftUI

struct ProductDetailBackgroundView: View {
    
    @Binding var rotateDegree : CGFloat
    
    var body: some View {
        GeometryReader { bounds in
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color("Background 1 Light"), Color("Primary")]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                
                Image("Inner Blob 1")
                   .blur(radius: 60)
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .onAppear(perform: {
                        withAnimation(Animation.linear(duration: 8).repeatForever(autoreverses: false)) {
                            self.rotateDegree = 360
                        }
                    })
                    .offset(x: -170, y: -380)
                    .opacity(0.9)

                
                Image("Inner Blob 1")
                   .blur(radius: 60)
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .onAppear(perform: {
                        withAnimation(Animation.linear(duration: 6).repeatForever(autoreverses: false)) {
                            self.rotateDegree = -360
                        }
                    })
                    .offset(x: 220, y: -100)
                    .opacity(0.9)
                
            
                BlurView(style:.systemThinMaterial)
                    .opacity(0.8)
                    .edgesIgnoringSafeArea(.all)

                
            }.frame(width : bounds.size.width)
        }
        
    }
}

struct ProductDetailBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailBackgroundView(rotateDegree: .constant(0))
    }
}
