////
////  ReadBlogData.swift
////  Plantza
////
////  Created by Satya Prakash Sahu on 23/09/21.
////
//
//import SwiftUI
//import SDWebImageSwiftUI
//struct ReadBlogData: View {
//    @ObservedObject var blogManager = BlogManager()
//    var body: some View {
//
//        
//
//        ForEach(blogManager.blogDataFirebase) { item in
//            VStack {
//                Text(item.headline)
//                Text(item.body)
//                WebImage(url: item.image)
//                    .resizable()
//                    .frame(width: 100.0, height: 100.0)
//                }
//             }
//        }
//    }
//
//struct ReadBlogData_Previews: PreviewProvider {
//    static var previews: some View {
//        ReadBlogData()
//    }
//}
