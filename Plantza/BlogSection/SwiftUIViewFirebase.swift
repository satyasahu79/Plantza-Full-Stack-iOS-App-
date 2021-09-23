////
////  SwiftUIViewFirebase.swift
////  Plantza
////
////  Created by Satya Prakash Sahu on 23/09/21.
////
//
//import SwiftUI
//import SDWebImageSwiftUI
//
//struct SwiftUIViewFirebase: View {
//
//
//    @ObservedObject var blogManager = BlogManager()
//
//
//    var body: some View {
//
//
//        ForEach(blogManager.blogDataFirebase) { item in
//            VStack{
//                VStack(alignment: .center, spacing: 20.0) {
//                    WebImage(url: item.image)
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 355, height: 180, alignment: .center)
//                        .clipped()
//                        .frame(width: 355, height: 180, alignment: .center)
//
//
//
//                    HStack(alignment: .top) {
//
//                        VStack(alignment: .leading, spacing: 5.0) {
//                            Text(item.headline)
//                                .font(.headline)
//                                .fontWeight(.semibold)
//                            Text(item.subhadline)
//                                .multilineTextAlignment(.leading)
//                                .lineLimit(2)
//                                .font(.subheadline)
//
//
//                        }
//                        .padding(.horizontal, 10.0)
//                        .padding(.bottom,30)
//                        .frame(width : 355)
//
//
//                    }
//
//                }
//
//                .background(BlurView(style: .systemMaterial).opacity(0.5))
//
//                .background(Color("Background 1 Light").opacity(0.2))
//                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//                .overlay(
//                    RoundedRectangle(cornerRadius: 20, style: .continuous)
//                    .stroke(lineWidth: 1)
//                        .foregroundColor(.black.opacity(0.2))
//                )
//            }
//        }
//
//
//
//    }
//}
//
//struct SwiftUIViewFirebase_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIViewFirebase()
//    }
//}
