////
////  BlogStore.swift
////  Plantza
////
////  Created by Satya Prakash Sahu on 23/09/21.
////
//
//import Foundation
//import Firebase
//class BlogManager: ObservableObject {
//
//    @Published var blogDataFirebase : [BlogData] = []
//
//    init() {
//        fetchData()
//    }
//    
//    func fetchData(){
//
//        let db = Firestore.firestore()
//
//        db.collection("blog").getDocuments { (snap, err) in
//
//            guard let blogDataFirebase = snap else {return}
//
//            self.blogDataFirebase = blogDataFirebase.documents.compactMap({ (i) -> BlogData? in
//                let headline = i.get("headline") as? String ?? ""
//                let subheadline = i.get("subheadline") as? String ?? ""
//                let image = i.get("image") as? String ?? ""
//                let body = i.get("body") as? String ?? ""
//
//
//                return BlogData(id: .init(), image: URL(string: image), headline: headline, subhadline: subheadline, body: body)
//            })
//
//
//        }
//    }
//}
//
//
////struct BlogData : Identifiable {
////    var id = UUID()
////    var image : String
////    var headline : String
////    var subhadline : String
////    var body : String
////}
