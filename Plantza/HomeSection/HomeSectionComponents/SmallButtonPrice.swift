//
//  SmallButtonPrice.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct SmallButtonPrice: View {
    
    @State var rotateDegree : CGFloat = 0.0
    var isGlowing : Bool = true
    var price : String = "10"
    
    var body: some View {
        ZStack {
            
            
            //Glow
            if isGlowing {
                
                Circle()
                           .fill(AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.7945833206176758, blue: 0.3958333134651184, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.25, blue: 0.31547629833221436, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.9771666526794434, blue: 0.42916667461395264, alpha: 1)),Color(#colorLiteral(red: 0.7800833582878113, green: 1, blue: 0.15416663885116577, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.7945833206176758, blue: 0.3958333134651184, alpha: 1))]), center: .center))
                    .rotationEffect(.degrees(180))
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .onAppear(perform: {
                        withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                            self.rotateDegree = 360
                        }
                    })
                    .blur(radius: 15)
                    .frame(width: 42, height: 42)
                
            }
            
            Text ("$\(price)")
                .font(.system(size: 17, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
                .padding(12)
                .background(Color("Background 1 Light").opacity(0.8))
                .clipShape(Circle())
        }
    }
}

struct SmallButtonPrice_Previews: PreviewProvider {
    static var previews: some View {
        SmallButtonPrice()
    }
}
