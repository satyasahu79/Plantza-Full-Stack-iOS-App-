//
//  CovidManagementView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI

struct CovidMeasuresView: View {
    
    
    
    @EnvironmentObject var dataStore : DataStore
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                Text("\(dataStore.covid)")
                    .multilineTextAlignment(.leading)
                    .padding()
                    .navigationBarTitle("Covid-19 Measures (from Firebase)")
                    .navigationBarTitle("SwiftUI", displayMode: .inline)
            })
            
            
            
            Text("Covid-19 Management")
        }
    }
}

struct CovidMeasuresView_Previews: PreviewProvider {
    static var previews: some View {
        CovidMeasuresView()
            .environmentObject(DataStore())
    }
}
