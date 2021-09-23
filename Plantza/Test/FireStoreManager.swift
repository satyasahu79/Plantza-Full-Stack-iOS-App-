//
//  FireStoreManager.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 23/09/21.
//

import Foundation
import FirebaseFirestore
import Firebase

class FirestoreManager : ObservableObject {
    @Published var restaurant : String = ""
    
    init() {
        fetchRestaurant()
//        fetchAllRestaurants()
    }
    
    
    
    func fetchRestaurant() {
        let db = Firestore.firestore()
        
        let docRef = db.collection("Restaurants").document("PizzaMaina")
        
        docRef.getDocument { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    print("data", data)
                    self.restaurant = data["name"] as? String ?? ""
                }
            }
            
        }
    }
    
//
//    func fetchAllRestaurants() {
//        let db = Firestore.firestore()
//
//        db.collection("Restaurants").getDocuments() { (querySnapshot, error) in
//            if let error = error {
//                print("Error getting documents: \(error)")
//            }
//            else {
//                for document in querySnapshot!.documents {
//                    print("\(document.documentID): \(document.data())")
//                }
//            }
//        }
//    }

}

