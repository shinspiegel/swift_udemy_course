//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            session.dataTask(with: url) { (data, response, error) in
                if let e = error {
                    print(e.localizedDescription)
                    return
                }
                
                self.decodePost(data)

            }.resume()
        }
    }
    
    func decodePost(_ data: Data?) {
        let decoder = JSONDecoder()
        
        if let d = data {
            do {
                let result = try decoder.decode(PostData.self, from: d)
                DispatchQueue.main.async {
                    self.posts = result.hits
                }
            } catch {
                print(error)
            }
        }
    }
}
