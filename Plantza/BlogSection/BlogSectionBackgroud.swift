//
//  BlogSectionBackgroud.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct BlogSectionBackgroud: View {
    
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
                            self.rotateDegree = 360
                        }
                    })
                    .offset(x: 280, y: -90)
                    .opacity(0.9)
                
                
                Image("Inner Blob 3")
                   .blur(radius: 60)
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .onAppear(perform: {
                        withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                            self.rotateDegree = 360
                        }
                    })
                    .offset(x: -250, y: 120)
                    .opacity(0.9)

                
                Image("Inner Blob 2")
                   .blur(radius: 60)
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .onAppear(perform: {
                        withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                            self.rotateDegree = 360
                        }
                    })
                    .offset(x: 250, y: 320)
                    .opacity(0.9)
                
                
                
                
                BlurView(style:.systemThinMaterial)
                    .opacity(0.8)
                    .edgesIgnoringSafeArea(.all)

                Image("Profile Outer Blob")
                    .offset(x: -30 ,y: -170)
            }.frame(width : bounds.size.width)
        }
        
        
    }
}

struct BlogSectionBackgroud_Previews: PreviewProvider {
    static var previews: some View {
        BlogSectionBackgroud(rotateDegree: .constant(0))
    }
}
