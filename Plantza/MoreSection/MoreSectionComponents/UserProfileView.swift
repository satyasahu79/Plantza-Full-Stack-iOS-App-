//
//  UserProfileView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 18/09/21.
//

import SwiftUI

struct UserProfileView: View {
   
    @State var rotateDegree : CGFloat = 0.0
    
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(spacing: 16.0) {
                
                
                ZStack {
                    
                    
                    //Glow
                    
                    Circle()
                        .fill(AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.7945833206176758, blue: 0.3958333134651184, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.25, blue: 0.31547629833221436, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.9771666526794434, blue: 0.42916667461395264, alpha: 1)),Color(#colorLiteral(red: 0.7800833582878113, green: 1, blue: 0.15416663885116577, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.7945833206176758, blue: 0.3958333134651184, alpha: 1))]), center: .center))
                        .rotationEffect(.degrees(180))
                        .rotationEffect(Angle(degrees: Double(rotateDegree)))
                        .onAppear(perform: {
                            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                                self.rotateDegree = 360
                            }
                        })
                        .blur(radius: 20)
                        .frame(width: 66.0, height: 66.0)
                    
                   
                    Image("Avatar")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 66.0, height: 66.0)
                        .overlay(
                            Circle()
                                .stroke(Color.black.opacity(0.2),lineWidth: 1)
                    )
                    
                    
                    
                }
                Text("Robert Fox")
                    .font(.title2)
                    .fontWeight(.bold)
                
                
                Spacer()
                
                SmallButton ( isGlowing: true)
                
            }   // HStack Ends
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16.0){
                VStack(alignment: .leading, spacing: 8.0){
                    HStack {
                        Image(systemName: "location.fill")
                            .opacity(0.3)
                        Text("Address")
                        Spacer()
                    }.font(.footnote)
                    
                    Text("6 Field Close, Seaford, BN25 4DN")
                        .font(.body)
                }
                
                
                VStack(alignment: .leading, spacing: 8.0) {
                    HStack {
                        Image(systemName: "envelope")
                            .opacity(0.3)
                        Text("trungkienspktnd@gamail.com")
                        Spacer()
                    }.font(.subheadline)
                    
                    HStack {
                        Image(systemName: "phone.circle")
                            .opacity(0.3)
                        Text("+91 79789 03356")
                        Spacer()
                    }.font(.subheadline)
                }
                
                
                
            }
            
        }
        .padding(16)
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


struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
