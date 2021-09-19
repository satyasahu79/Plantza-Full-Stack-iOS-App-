//
//  FeaturedCardView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct FeaturedCardView: View {
    // MARK: - Properties
    
    var product : Product = productData[3]
    @State var rotateDegree : CGFloat = 0.0
    
    // MARK: - Body
    var body: some View {
        

        ZStack {
            
//            Angluar Blur
            
            HStack {
                Image("Inner Blob 1").opacity(0.3)
                    .scaleEffect(2)
                    .blur(radius: 40)
                    .rotationEffect(Angle(degrees: Double(rotateDegree)))
                    .onAppear() {
                        DispatchQueue.main.async {
                            withAnimation(Animation.linear(duration: 10).repeatForever(autoreverses: false)) {
                                self.rotateDegree = 360
                            }
                        }
                    }
            }
            .frame(width: 250, height: 250, alignment: .center)
            .padding(.horizontal, 15)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            
            HStack {
                    
                    
                    // MARK: - Text Section
                    
                    VStack(alignment: .leading, spacing: 15.0) {
                        
                        Text(product.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                        HStack{
                            Image(systemName: "leaf.arrow.triangle.circlepath")
                                .foregroundColor(.accentColor)
                            
                            Text(product.type)
                                .font(.system(size: 13, weight: .regular, design: .rounded))
                                .foregroundColor(.accentColor)
                            
                        }
                        
                        Text(product.subtitle)
                            
                            .font(.footnote)
                            .foregroundColor(.accentColor)
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                        Button(action: {print("Featured Button tapped")}, label: {
                            
                            HStack(spacing: 5.0) {
                                Text("Starting")
                                    .font(.system(size: 13, weight: .regular, design: .rounded))
                                Text("$\(product.price)")
                                    .font(.system(size: 13, weight: .bold, design: .rounded))
                            }
                            .padding(.vertical, 6.0)
                            .padding(.horizontal, 10.0)
                            .background(Color("Background 1 Light"))
                            .clipShape(RoundedRectangle(cornerRadius: 12.0
                                                        , style: .continuous))
                            
                        })
                        .shadow(color: Color("Primary").opacity(0.3), radius: 20, x: 10, y: 10)
                        .shadow(color: Color("Primary").opacity(0.3), radius: 20, x: -10, y: -10)
                    }
                    
                    
                    
                    
                    // MARK: - Image Section
                               

                    Image(product.productImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .shadow(color: .black.opacity(0.25), radius: 30, x: 0, y: 15)
                    
                }
                .frame(width: 250, height: 250, alignment: .center)
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
            
    }
}


// MARK: - Preview
struct FeaturedCardView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedCardView()
    }
}

