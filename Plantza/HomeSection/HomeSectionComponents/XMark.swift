//
//  XMark.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 20/09/21.
//

import SwiftUI

struct XMark: View {
    
    @Binding var isActive : Bool
    
    var body: some View {
        ZStack {
            Button(action: {
                
                isActive.toggle()
                
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title3.weight(.light))
                    .padding(20)
                    .frame(width: 40.0, height: 40.0)
            })
            
        }
        .background(
            Color("Primary").opacity(0.9).blur(radius: 20)
                .clipShape(Circle())
        )
        
        

    }
}

struct XMark_Previews: PreviewProvider {
    static var previews: some View {
        XMark(isActive: .constant(false))
    }
}
