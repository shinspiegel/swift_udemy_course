//
//  ContentView.swift
//  HackerNews
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List(postList) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

let postList = [
    Post(id: "0", title: "My not so big first title"),
    Post(id: "1", title: "Short Second"),
    Post(id: "2", title: "Third long title in this one that is very big"),
]
