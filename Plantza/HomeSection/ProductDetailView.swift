//
//  ProductDetailView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 20/09/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product : Product = productData[0]
    @State var rotateDegree : CGFloat = 0
    
    var body: some View {
        ZStack {
            
            ProductDetailBackgroundView(rotateDegree: $rotateDegree)
            
            
            
            ScrollView  {
                
                VStack(alignment: .center) {
                    HStack(alignment: .center) {
                        
                        // Title and product info
                        
                        VStack(alignment: .leading, spacing: 20.0)  {
                            
                            Text(product.title)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(minHeight : 70)
                            VStack(alignment: .leading, spacing: 15.0){
                                
                                HStack(alignment: .center, spacing: 10.0){
                                    Image(systemName: "leaf.arrow.triangle.circlepath")
                                        .foregroundColor(.accentColor)
                                    
                                    Text(product.type)
                                        .font(.system(size: 13, weight: .regular, design: .rounded))
                                        .foregroundColor(.accentColor)
                                    
                                }
                                
                                HStack(alignment: .center, spacing: 10.0){
                                    Image(systemName: "thermometer.sun")
                                        .foregroundColor(.accentColor)
                                    
                                    Text(product.temperature)
                                        .font(.system(size: 13, weight: .regular, design: .rounded))
                                        .foregroundColor(.accentColor)
                                    
                                }
                                
                                HStack(alignment: .center, spacing: 10.0){
                                    Image(systemName: "lightbulb")
                                        .foregroundColor(.accentColor)
                                    
                                    Text(product.lighting)
                                        .font(.system(size: 13, weight: .regular, design: .rounded))
                                        .foregroundColor(.accentColor)
                                    
                                }
                                
                                HStack(alignment: .center, spacing: 10.0){
                                    
                                    Image(systemName: "drop.triangle")
                                        .foregroundColor(.accentColor)
                                    
                                    Text(product.humidity)
                                        .font(.system(size: 13, weight: .regular, design: .rounded))
                                        .foregroundColor(.accentColor)
                                    
                                }
                                
                                HStack(alignment: .center, spacing: 10.0){
                                    Image(systemName: "ruler")
                                        .foregroundColor(.accentColor)
                                    
                                    Text(product.size)
                                        .font(.system(size: 13, weight: .regular, design: .rounded))
                                        .foregroundColor(.accentColor)
                                    
                                }
                                
                                
                                
                            }
                            .padding(.horizontal, 15.0)
                            .padding(.vertical, 20.0)
                            .background(BlurView(style: .light).opacity(0.7))
                            .background(Color("Background 1 Light").opacity(0.5))
                            
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
                            )
                            
                            .shadow(color: Color("Primary").opacity(0.3), radius:60, x:0, y:30)
                            
                            
                        }
                        .frame(maxWidth:160)
                        
                        // Product Image
                        
                        Spacer()
                        
                        
                        Image(product.productImage)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth : 170,maxHeight: 330)
                            .shadow(color: .black.opacity(0.25), radius: 20, x: 0, y: 10)
                        
                    }
                    
                    .padding(.bottom, 20.0)
                    
                    
                    
                    // About Section
                    
                    VStack(alignment: .leading, spacing: 15.0) {
                        Text("About")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Text(product.description)
                            .font(.body)
                            .foregroundColor(.black.opacity(0.6))
                            .multilineTextAlignment(.leading)
                        
                        
                    }
                    .padding()
                    .background(BlurView(style: .light).opacity(0.7))
                    .background(Color("Background 1 Light").opacity(0.5))
                    
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
                    )
                    
                    .shadow(color: Color("Primary").opacity(0.3), radius:60, x:0, y:30)
                    
                    
                    Spacer()
                    
                    
                    
                    Button(action: {print("Featured Button tapped")}, label: {
                        
                        HStack(spacing: 5.0) {
                            
                            Spacer()
                            
                            HStack(spacing: 16.0) {
                                HStack(spacing: 5.0) {
                                    Image(systemName: "bag.badge.plus")
                                        .font(.body)
                                    
                                    Text("Add to Cart")
                                        .font(.system(size: 18, weight: .regular, design: .rounded))
                                }
                                
                                Text("$\(product.price)")
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                            }
                            
                            Spacer()
                            
                        }
                        .padding(.vertical, 15.0)
                        .padding(.horizontal, 20.0)
                        .background(Color("Background 1 Light"))
                        .clipShape(RoundedRectangle(cornerRadius: 12.0
                                                    , style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)).opacity(0.3), radius: 20, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)).opacity(0.3), radius: 20, x: -10, y: -10)
                    })
                    
                    
                    .navigationTitle("")
//                    .navigationBarHidden(true)
                }
                .padding(20)
                
             
                
            }
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
