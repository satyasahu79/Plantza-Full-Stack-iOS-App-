//
//  HomeView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct HomeView: View {
    
    let  products : [Product] = productData
    let facts : Fact = factData.randomElement()!
    @State var rotateDegree : CGFloat = 0
    
    var body: some View {
        
        
        NavigationView {
            
            ZStack {
                
                BlogSectionBackgroud(rotateDegree: $rotateDegree)
                // Background
                
                
                
                ScrollView (showsIndicators : false) {
                    
                    VStack(spacing: 20.0) {
                        
                        // Top Header
                        
                        HomeTopBar()
                            .padding(.horizontal)
                            .padding(.bottom,10)
                        
                        
                        // Featured Item Stacked
                        
                        FeaturedCardStacked()
                            .offset(x : -10)
                        
                        
                        //Products
                        
                        HStack {
                            Text("Newest")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        ForEach(products) { item in
                           NavigationLink(
                            destination: ProductDetailView(product: item, rotateDegree: 0),
                            label: {
                                ProductCardView(product: item)
                            })
                        }
                       
                        // Did you Know?
                  
                            HStack {
                                Text("Did you know?")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(.horizontal)
                            .padding(.bottom,10)
                        
                        
                        DidYouKnowCardStacked(facts: facts)
                            .padding(.bottom,20)
                        
                        
                    
                    }
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


