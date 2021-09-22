//
//  SmallButton.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct SmallButton: View {
    // MARK: - Properties
    
    var imageName : String = "gearshape.fill"
    @State var rotateDegree : CGFloat = 0.0
    var isGlowing : Bool = true
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            
            
            //Glow
            if isGlowing {
                
                RoundedRectangle(cornerRadius: 12)
                    .fill(AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.7945833206176758, blue: 0.3958333134651184, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.25, blue: 0.31547629833221436, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.9771666526794434, blue: 0.42916667461395264, alpha: 1)),Color(#colorLiteral(red: 0.7800833582878113, green: 1, blue: 0.15416663885116577, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.7945833206176758, blue: 0.3958333134651184, alpha: 1))]), center: .center))
                    .rotationEffect(.degrees(180))
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .blur(radius: 15)
                    .frame(width: 36.0, height: 36.0)
                    .onAppear() {
                        DispatchQueue.main.async {
                            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                                self.rotateDegree = 360
                            }
                        }
                    }
                
                
            }
            
            LinearGradient(gradient: Gradient(colors: [Color("AccentColor"), Color("Primary")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .mask(Image(systemName: imageName)
                        .font(.body)
                        .padding(8))
                .frame(width: 36, height: 36, alignment: .center)
                .background(Color("Background 1 Light").opacity(0.8))
                .frame(width: 36, height: 36, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
        
    }
}



// MARK: - Previews
struct SmallButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallButton()
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
    }
}
