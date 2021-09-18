//
//  RotationBug.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 18/09/21.
//

import SwiftUI

struct RotationBug: View {
    
    @State private var rotateDegree : CGFloat = 0
    
    var body: some View {
        NavigationView{
            
            MoreBackground(rotateDegree: $rotateDegree)
            
//            GeometryReader { bounds in
//
//                ZStack {
//                Image("Inner Blob 1")
//                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
//                .onAppear(perform: {
//                     withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)) {
//                         self.rotateDegree = 360
//                     }
//                 })
//                .frame(width: bounds.size.width)
//
//
//
//
//
//                }
//
//
//        }
    }
}

}
struct RotationBug_Previews: PreviewProvider {
    static var previews: some View {
        RotationBug()
    }
}
