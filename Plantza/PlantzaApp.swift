//
//  PlantzaApp.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI
import Firebase

@main
struct PlantzaApp: App {
    
    @StateObject var firestoreManager = FirestoreManager()
//    @StateObject var blogManager = BlogManager()
    @StateObject var dataStore = DataStore()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(firestoreManager)
                .environmentObject(dataStore)
        }
    }
}
