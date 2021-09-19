//
//  HomeTopBar.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import SwiftUI

struct HomeTopBar: View {
    var body: some View {
        HStack(spacing: 20.0) {
            Text("Featured")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            
            Image("Avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44, alignment: .center)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 1)
                        .foregroundColor(.black.opacity(0.5))
                )
            
        }
    }
}

struct HomeTopBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopBar()
    }
}
