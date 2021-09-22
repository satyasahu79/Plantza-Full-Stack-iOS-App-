//
//  DidYouKnowDetailView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 20/09/21.
//

import SwiftUI

struct DidYouKnowDetailView: View {
    // MARK: - Properties
    var facts : [Fact] = factData
    var tips : [Tips] = tipsData
    
    @Binding var isActive : Bool
    
    // MARK: - Body
    var body: some View {
        ZStack  {
            
            
            BlurView(style: .systemThickMaterial).opacity(0.9)
                .ignoresSafeArea(.all)
            
            
            ScrollView {
                VStack {
                    
                    DidYouKnowScrollView(facts: facts)
                 
                Spacer()
                }
            }
            
            
            VStack {
                HStack{
                    Spacer()
                    XMark(isActive: $isActive)
                }
                Spacer()
            }.padding(.horizontal)
            
        
        }   // ZStack Ends
        
       
    }
}



// MARK: - Previews
struct DidYouKnowDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DidYouKnowDetailView( isActive: .constant(true))
    }
}






