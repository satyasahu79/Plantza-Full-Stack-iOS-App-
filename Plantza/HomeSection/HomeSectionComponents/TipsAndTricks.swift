//
//  TipsAndTricks.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 22/09/21.
//

import SwiftUI

struct TipsAndTricks: View {
    
    var tips : Tips = tipsData[0]
    @State var rotateDegree = 0
    var body: some View {
        ZStack {

            
            
            HStack {
                    
                    
                    // MARK: - Text Section
                    
                    VStack(alignment: .leading, spacing: 15.0) {
                        
                        Text(tips.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                        HStack{
                        
                            Text(tips.text)
                            
                            .font(.footnote)
//                            .foregroundColor(.accentColor)
                            .multilineTextAlignment(.leading)
                                                    
                        .shadow(color: Color("Primary").opacity(0.3), radius: 20, x: 10, y: 10)
                        .shadow(color: Color("Primary").opacity(0.3), radius: 20, x: -10, y: -10)
                    }
                    
                }
                .frame(width: 300, height: 250, alignment: .center)
                .padding(.horizontal, 15)
                .background(BlurView(style: .light).opacity(0.7))
                .background(Color("Background 1 Light").opacity(0.5))
                
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
                )
                
            .shadow(color: Color("Primary").opacity(0.3), radius:60, x:0, y:30)
        }
            
            
            HStack {
                Image("Inner Blob 1").opacity(0.1)
                    .scaleEffect(2)
                    .blur(radius: 40)
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .onAppear() {
                        DispatchQueue.main.async {
                            withAnimation(Animation.linear(duration: 7).repeatForever(autoreverses: false)) {
                                self.rotateDegree = 360
                            }
                        }
                    }
            }
            .frame(width: 300, height: 250, alignment: .center)
            .padding(.horizontal, 15)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
        }
    }
}

struct TipsAndTricks_Previews: PreviewProvider {
    static var previews: some View {
        TipsAndTricks()
    }
}
