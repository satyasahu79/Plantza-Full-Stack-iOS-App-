//
//  MoreView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct MoreView: View {
    // MARK: - Properties
    
    @State private var rotateDegree : CGFloat = 0
    
    
    // MARK: - Body
    var body: some View {
        
        GeometryReader { bounds in
            
                NavigationView {
                    
                    ZStack {
                        MoreBackground(rotateDegree: $rotateDegree)
                                
                            ScrollView {
                                VStack(spacing: 30.0) {
                                    
                                    UserProfileView()
                                        
                                    MenuView()
                                    
                                    Button(action: {print("User Signed Out")}, label: {
                                        
                                        PrimaryButton(imageName: "person.circle", text: "Sign out")
                                        
                                    })
                                    
                                }
                                .padding(20)
                                .navigationTitle("Profile")
                                .frame(width: bounds.size.width )
                                
                            }
                            
                        }
                    .frame(width: bounds.size.width )
                        
                    
                }
               
            
        }   // Geometry Reader Ends
        
    }
}



// MARK: - Preview
struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}







