//
//  MenuCell.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct MenuCell: View {
    // MARK: - Properties
    var imageName : String = "gift.fill"
    var title : String = "Placeholder Text"
    var destination : AnyView = AnyView(HomeView())
    @State private var isGLowing : Bool = false
    
    // MARK: - Body
    var body: some View {
        
        NavigationLink(
            destination: destination,
            label: {
                
                HStack  {
                    SmallButton(imageName: imageName, isGlowing: $isGLowing)
                    Text(title)
                        .font(.headline)
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black.opacity(0.3))
                }
            })
        
        
    }
}



// MARK: - Previews
struct MenuCell_Previews: PreviewProvider {
    static var previews: some View {
        MenuCell()
            
    }
}
