//
//  UserPostsView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 18/09/21.
//

import SwiftUI

struct UserPostsView: View {
    @ObservedObject var userPostsStore = UserPostStore()
    
    var body: some View {
        
        ScrollView {
            
            ForEach(userPostsStore.userPosts) { item in
                
                VStack(alignment: .leading, spacing: 10.0) {
                    Text(item.title)
                        .font(.title2)
                    
                    Text(item.body)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Divider()
                }
                .padding([.leading, .bottom, .trailing], 10.0)
                
            }
            
            
            .navigationTitle("User Posts")
        }
        
        .background(
            Color("Background 2 Light")
                .ignoresSafeArea()
        )
        
        
        
    }
}

struct UserPostsView_Previews: PreviewProvider {
    static var previews: some View {
        UserPostsView()
    }
}
