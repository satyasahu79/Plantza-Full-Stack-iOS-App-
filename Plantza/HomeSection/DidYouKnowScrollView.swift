//
//  DidYouKnowScrollView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 22/09/21.
//

import SwiftUI

struct DidYouKnowScrollView: View {
    
    var facts : [Fact] = factData
    @State var rotateDegree : CGFloat = 0
    var tips : [Tips] = tipsData
    
//    let scale = getScale(proxy: proxy)
    
    private func getScale (proxy : GeometryProxy) -> CGFloat    {
        var scale : CGFloat = 1
        
        let y = proxy.frame(in: .global).minY
        
        let diff = abs(y-90)
        
        if diff < 100 {
            scale = 1 + (100-diff)/500
        }
        return scale
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                HStack {
                    
                    Text("Facts")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Spacer()
        
                }.padding(.horizontal)
                ForEach(self.facts) { item in
                    
                    VStack(alignment: .center) {
                        
                        
                        GeometryReader { proxy in
                            
                            HStack {
                                Spacer()
                                DidYouKnowCard(facts: item)
                                    .padding([.leading, .bottom, .trailing],20)
                                    
                                
                                    .scaleEffect(CGSize(width: getScale(proxy: proxy), height: getScale(proxy: proxy)))
                                    
                                    .animation(Animation.easeInOut(duration: 0.7))
                            
                            Spacer()
                            }
                            
                            
                        }
                        .padding(.bottom, 120.0)
                        
                    
                    Spacer()
                    
                    }
                    .padding(.top,20)

                    
                }
            
            
                VStack{
                    HStack {
                        
                        Text("Tips & Tricks")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
            
                    }
                    .padding([.leading, .trailing])
                    .padding(.top,30)
                    
                    ForEach(tips) { item in
                        TipsAndTricks(tips: item, rotateDegree: Int(rotateDegree))
                            .padding(.bottom)
                    }
                    
                    
                }
            
            }
            
            
            
            
            
            
            
            
            
            
            
            
            Spacer(minLength: 0)
            
            
        })
        
//        .frame(height : 300)
    }
}

struct DidYouKnowScrollView_Previews: PreviewProvider {
    static var previews: some View {
        DidYouKnowScrollView()
    }
}

