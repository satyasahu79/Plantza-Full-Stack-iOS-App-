//
//  DidYouKnowCardStacked.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct DidYouKnowCardStacked: View {
    var facts : Fact = factData[1]
    
    var body: some View {
        ZStack{
            
            
            DidYouKnowBackCard(rotationAngle: -10)
            DidYouKnowBackCard(rotationAngle: -5)
            
            
            DidYouKnowCard(facts: facts)
            
        }
    }
}

struct DidYouKnowCardStacked_Previews: PreviewProvider {
    static var previews: some View {
        DidYouKnowCardStacked()
    }
}

struct DidYouKnowBackCard: View {
    
    var rotationAngle : Double = 0
    
    var body: some View {
        VStack{
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
        .shadow(color: Color("Primary").opacity(0.3), radius:30, x:0, y:15)
        .rotationEffect(.degrees(rotationAngle))
    }
}
