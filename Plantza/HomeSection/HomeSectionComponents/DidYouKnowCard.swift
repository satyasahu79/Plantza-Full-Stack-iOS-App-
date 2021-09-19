//
//  DidYouKnowCard.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct DidYouKnowCard: View {
    
    var facts : Fact = factData[3]
    
    var body: some View {
        
        VStack {
            
            
            HStack(alignment: .top, spacing: 15.0)  {
                
                SmallButton(imageName: "gearshape.fill", rotateDegree: 0, isGlowing: true)
               
                
                VStack(alignment: .leading, spacing: 10.0){
                    Text(facts.title)
                        .font(.body)
                        .fontWeight(.semibold)
                    
                    Text(facts.text)
                        .font(.footnote)
                }
                
//                Spacer()
            }
            .frame(width: 280,height: 100, alignment: .center)
            .padding(20)
            .background(BlurView(style: .light).opacity(0.5))
            .background(Color("Background 1 Light").opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
            )
            .shadow(color: Color("Primary").opacity(0.5), radius:60, x:0, y:30)
            
            
            
            
            
            
            
        }
    }
}

struct DidYouKnowCard_Previews: PreviewProvider {
    static var previews: some View {
        DidYouKnowCard()
    }
}
