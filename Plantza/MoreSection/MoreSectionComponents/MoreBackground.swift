//
//  MoreBackground.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 18/09/21.
//

import SwiftUI

struct MoreBackground: View {
    
    @Binding var rotateDegree : CGFloat
    
    var body: some View {
        
        GeometryReader { bounds in
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color("Background 1 Light"), Color("Primary")]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            Image("Inner Blob 1")
               .blur(radius: 60)
                .rotationEffect(Angle(degrees: Double(rotateDegree)))
                .onAppear(perform: {
                    withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                        self.rotateDegree = 360
                    }
                })
                .offset(x: -170, y: -350)
                .opacity(0.9)
            
            
            BlurView(style:.systemThinMaterial)
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)


            Image("Profile Outer Blob")
                .offset(x: -30 ,y: -170)
            
        }
        .frame(width: bounds.size.width)
            
        }
    }
}

struct MoreBackground_Previews: PreviewProvider {
    static var previews: some View {
        MoreBackground(rotateDegree: .constant(30))
            .preferredColorScheme(.light)
    }
}
