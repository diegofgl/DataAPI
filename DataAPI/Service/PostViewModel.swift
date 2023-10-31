//
//  PostViewModel.swift
//  DataAPI
//
//  Created by Diego Rodrigues on 31/10/23.
//

import Foundation

class PostViewModel {
    static func getPosts(completion: @escaping ([Post]) -> Void) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        
        URLSession.shared.dataTask(with: url) { data, responser, error in
            
            if let data = data {
                if let posts = try? JSONDecoder().decode([Post].self, from: data) {
                    completion(posts)
                }
            }
        }.resume()
    }
}

