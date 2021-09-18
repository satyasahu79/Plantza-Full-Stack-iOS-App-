//
//  SmallButton.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct SmallButton: View {
    // MARK: - Properties
    
    var imageName : String = "gearshape.fill"
    
    // MARK: - Body
    var body: some View {
        Image(systemName: imageName)
            .font(.body)
            .padding(8)
            .background(Color("Background 1 Light").opacity(0.8))
            .frame(width: 36, height: 36, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            
    }
}



// MARK: - Previews
struct SmallButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallButton()
            .previewLayout(.sizeThatFits)
    }
}
