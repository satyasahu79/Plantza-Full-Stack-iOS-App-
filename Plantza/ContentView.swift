//
//  ContentView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {  Image(systemName: "leaf");Text("Home")  }
            BlogView()
                .tabItem {  Image(systemName: "rectangle.and.pencil.and.ellipsis");Text("Blog")  }
            ShoppingBagView()
                .tabItem {  Image(systemName: "bag");Text("Bag")  }
            MoreView()
                .tabItem {  Image(systemName: "ellipsis.circle");Text("More")  }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
