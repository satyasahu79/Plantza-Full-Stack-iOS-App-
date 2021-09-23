//
//  LoginView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 23/09/21.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    func login()    {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                print("Error : \(error?.localizedDescription ?? "")")
            }
            
            else   {
                
                print("success")
                
            }
            
        
            
        }
    }
    
    
    
    var body: some View {
        VStack  {
            TextField("Email",text: $email)
                .padding()
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            SecureField("Password",text: $password)
                .padding()
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            Button(action: {  login()  }, label: {
                Text("Sign in")
                    .foregroundColor(.white)
                    .padding(.horizontal, 30.0)
                    .padding(.vertical, 10.0)
                    .background(Color.black)
                    .clipShape(Capsule())
            })
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


