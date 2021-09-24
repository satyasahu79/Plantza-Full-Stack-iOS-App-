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
    let tips : [Tips] = tipsData
    let factsArray : [Fact] = factData
    
    
    @State var rotateDegree : CGFloat = 0
    @State var isActive : Bool = false
    
    var body: some View {
        
        
        NavigationView {
            
            ZStack {
                
                BlogSectionBackgroud(rotateDegree: $rotateDegree)
                // Background
                
                
                
                
                ScrollView (showsIndicators : false) {
                    
                    VStack {
                        
                        // Top Header
                        
                        HomeTopBar()
                            .padding(.horizontal)
                            .padding(.bottom,10)
                        
                        
                        // Featured Item Stacked
                        
                        FeaturedCarousel(products: products)
                            .offset(x : -10,y:-40)
                        
                        VStack(spacing: 20.0){
                            
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
                            
                            
                            DidYouKnowCardStacked(facts: facts, isActive: $isActive)
                                .padding(.bottom,20)
                            
                        }
                        .offset(x: 0, y: -100)
                    
                    }
                }
            
            if (isActive)
            {
                DidYouKnowDetailView(facts: factsArray, tips: tips, isActive: $isActive)
                    .transition(
                        .asymmetric(
                            insertion: AnyTransition
                                .opacity
                                .animation(Animation.spring().delay(0.1)),
                            removal: AnyTransition
                                .opacity
                                .animation(Animation.spring())
                        )
                    )
                
                
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


