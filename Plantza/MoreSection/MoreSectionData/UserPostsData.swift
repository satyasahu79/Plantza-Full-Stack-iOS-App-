//
//  UserPosts.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 18/09/21.
//

import SwiftUI
import Combine

struct UserPost: Codable, Identifiable {
        let id = UUID()
        var title: String
        var body: String
    }

class Api {
    func getUserPosts(completion: @escaping ([UserPost]) -> ()) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

        URLSession.shared.dataTask(with: url) { (data, _, _) in

            let userPosts = try! JSONDecoder().decode([UserPost].self, from: data!)
            DispatchQueue.main.async {
                completion(userPosts)
            }
        }
        .resume()
    }
}


class UserPostStore : ObservableObject  {
    @Published var userPosts : [UserPost] = []
    
    init() {
       getUserPosts()
    }
    
    
    func getUserPosts() {
        Api().getUserPosts { userPosts in
            self.userPosts = userPosts
        }
    }
    
}
