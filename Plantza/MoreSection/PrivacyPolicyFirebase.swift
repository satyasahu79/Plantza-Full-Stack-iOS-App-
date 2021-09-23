//
//  PrivacyPolicyFirebase.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 23/09/21.
//

import SwiftUI




struct PrivacyPolicyFirebase: View {
    
    @EnvironmentObject var dataStore : DataStore
    
    var body: some View {
        VStack {
            Text("\(dataStore.policy)")
                .multilineTextAlignment(.leading)
                .padding()
                .navigationBarTitle("Privacy Policy (from Firebase)")
                .navigationBarTitle("SwiftUI", displayMode: .inline)
        }
    }
}

struct PrivacyPolicyFirebase_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyFirebase()
            .environmentObject(DataStore())
    }
}
