//
//  OrderHistoryView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct OrderHistoryView: View {
    var body: some View {
        
       
        
        ZStack {
            
            Color("Background 2 Light")
                .ignoresSafeArea(.all)
            
            VStack(spacing: 10.0) {
                Text("You haven't purchased\na product yet.")
                    .multilineTextAlignment(.center)
                Image(systemName: "bag.circle")
                    .font(.title.weight(.light))
                    
            }
            
            .navigationTitle("Order History")
        }
        
        
        
        
        
        
    }
    
    
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}
