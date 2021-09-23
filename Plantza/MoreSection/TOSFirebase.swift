//
//  TOSFirebase.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 24/09/21.
//

import SwiftUI

struct TOSFirebase: View {
    
    @EnvironmentObject var dataStore : DataStore
    
    var body: some View {
        VStack {
            Text("\(dataStore.tos)")
                .multilineTextAlignment(.leading)
                .padding()
                .navigationBarTitle("Terms of Service (from Firebase)")
                .navigationBarTitle("SwiftUI", displayMode: .inline)
        }
    }
}

struct TOSFirebase_Previews: PreviewProvider {
    static var previews: some View {
        TOSFirebase()
            .environmentObject(DataStore())
    }
}
