//
//  FAQView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import SwiftUI


struct FAQView: View {
    @State private var faqData : [FAQ] = FAQData
    
    var body: some View {
        
        
        ZStack {
            
            Color("Background 2 Light")
                .ignoresSafeArea(.all)
            
            VStack(alignment: .leading) {
                ScrollView(showsIndicators : false) {
                    ForEach(faqData) { item in
                 
                            VStack(alignment: .leading, spacing: 10.0)  {
                                Text(item.headline)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                Text(item.text)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .multilineTextAlignment(.leading)
                                Divider()
                                
                            }.padding([.leading, .bottom, .trailing])
                            
                     
                    }
                
                    Button(action: {
                        EmailService.shared.sendEmail(subject: "Support for Plantza", body: "Add your query.", to: "plantzaios@gamail.com") { (isWorked) in
                            if !isWorked    { //if mail couldn't be presented
                                // do action
                                print("Not Working")
                            }
                        }
                    }, label: {
                        
                        PrimaryButton(imageName: "envelope", text: "Contact Support")
                            .padding([.leading, .bottom, .trailing], 20.0)
                    })
                
                
                
                }   // Scroll View Ends
                
                .navigationTitle("FAQ")
               
                
            }   // VStack Ends
            
        }   // ZStack Ends
        
        
        
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
