//
//  ProductCardView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct ProductCardView: View {
    
    var product : Product = productData[3]
    
    var body: some View {
       
        
        HStack {
            
            // MARK: - Text Section
            
            VStack(alignment: .leading, spacing: 10.0) {
                
                Text(product.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
               
                HStack{
                    Image(systemName: "leaf.arrow.triangle.circlepath")
                        .foregroundColor(.accentColor)
                    
                    Text(product.type)
                        .font(.system(size: 13, weight: .regular, design: .rounded))
                        .foregroundColor(.accentColor)
                    
                }
                
                HStack{
                    Image(systemName: "ruler")
                        .foregroundColor(.accentColor)
                    
                    Text(product.size)
                        .font(.system(size: 13, weight: .regular, design: .rounded))
                        .foregroundColor(.accentColor)
                    
                }
                
//                Text(product.subtitle)
//
//                    .font(.footnote)
//                    .foregroundColor(.accentColor)
//                    .multilineTextAlignment(.leading)
//                    .lineLimit(3)
//
//
                Button(action: {print("Added to Cart")}, label: {
                    
                    HStack(spacing: 5.0) {
                        HStack {
                            Image(systemName: "bag.badge.plus")
                                .font(.body)
                                
                            Text("Add to Cart")
                                .font(.system(size: 13, weight: .regular, design: .rounded))
                        }
                        
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

            
            Spacer()
            
            // MARK: - Image Section
                       

            Image(product.productImage)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .shadow(color: .black.opacity(0.25), radius: 30, x: 0, y: 15)
            
        }
        .frame(width:320,height: 150)
        .padding(.horizontal, 15)
        .padding(.vertical, 5.0)
        .background(BlurView(style: .light).opacity(0.5))
        .background(Color("Background 1 Light").opacity(0.4))
        
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black.opacity(0.2),lineWidth: 1.0)
        )
        
        .shadow(color: Color("Primary").opacity(0.5), radius:30, x:0, y:15)
        
     
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView()
    }
}
