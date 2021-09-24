//
//  ReadFirestore.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 23/09/21.
//

import SwiftUI

struct ReadFirestore: View {
    
    @EnvironmentObject var firestoreManager : FirestoreManager
    
    var body: some View {
        Text("\(firestoreManager.restaurant)")
                .padding()
           
        
    }
}

struct ReadFirestore_Previews: PreviewProvider {
    static var previews: some View {
        ReadFirestore()
            .environmentObject(FirestoreManager())
    }
}
