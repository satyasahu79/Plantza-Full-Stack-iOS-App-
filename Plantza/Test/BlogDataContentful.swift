////
////  BlogDataContentful.swift
////  Plantza
////
////  Created by Satya Prakash Sahu on 24/09/21.
////
//
//
//import SwiftUI
//import Contentful
//import Combine
//
//let client = Client(spaceId: "xtwszpluxn1y", accessToken: "CYHVL81XYJSAEB-JdKNtqfnXrzk-ckmR4wuAEJl1GOY")
//
//func getArray(id : String, completion : @escaping ([Entry]) -> () ) {
//    let qurey = Query.where(contentTypeId: id)
//
//    client.fetchArray(of: Entry.self, matching: qurey)  { result in
//
//        switch result {
//        case .success(let entry):
//            DispatchQueue.main.async {
//                completion(entry.items)
//                print(entry.items)
//            }
//
//        case .failure(let error):
//            print("Error \(error)!")
//        }
//
//    }
//}
//
//
//
//class BlogDataContentful : ObservableObject {
//    @Published var blogDataContentful : [BlogData] = []
//
//    init() {
//
//
//
//        getArray(id: "blog") { items in
//            items.forEach { item in
//                self.blogDataContentful.append(BlogData(
//                                                id: .init(),
//                                                image: item.fields.linkedAsset(at: "image")?.url ?? URL(string: "")!,
//                                                headline: item.fields["headline"] as! String,
//                                                subhadline: item.fields["subheadline"] as! String,
//                                                body: item.fields["body"] as! String))
//            }
//        }
//
//
//
//
//    }
//
//
//
//
//
//}
//
//
////struct BlogData : Identifiable {
////    var id = UUID()
////    var image : URL?
////    var headline : String
////    var subhadline : String
////    var body : String
////}
////BlogData(title: item.fields["title"] as! String,
////                           subtitle: item.fields["subtitle"] as! String,
////                           image: item.fields.linkedAsset(at: "image")?.url ?? URL(string: "")!,
////                           logo: #imageLiteral(resourceName: "Logo1"),
////                           color: colors.randomElement()!,
////                           show: false)
