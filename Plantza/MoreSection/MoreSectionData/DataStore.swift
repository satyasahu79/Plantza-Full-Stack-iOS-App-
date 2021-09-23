//
//  DataStore.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 23/09/21.
//

import Foundation
import FirebaseFirestore
import Firebase

class DataStore : ObservableObject {
    @Published var policy : String = ""
    @Published var tos : String = ""
    @Published var covid : String = ""
    
    init() {
        fetchPolicy()
        fetchTOS()
        fetchCovid()
    }
    
    func fetchPolicy() {
        let db = Firestore.firestore()
        
        let docRef = db.collection("PrivacyPolicy").document("privacyPolicy")
        
        docRef.getDocument { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    print("Policy : ", data)
                    self.policy = data["policy"] as? String ?? ""
                }
            }
            
        }
    }

    func fetchTOS() {
        let db = Firestore.firestore()
        
        let docRef = db.collection("TOS").document("termsOfService")
        
        docRef.getDocument { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    print("Terms : ", data)
                    self.tos = data["terms"] as? String ?? ""
                }
            }
            
        }
    }

    func fetchCovid() {
        let db = Firestore.firestore()
        
        let docRef = db.collection("Covid19").document("covid")
        
        docRef.getDocument { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    print("Terms : ", data)
                    self.covid = data["duty"] as? String ?? ""
                }
            }
            
        }
    }




}
