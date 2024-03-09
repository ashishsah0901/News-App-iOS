//
//  ContentView.swift
//  HackerNews
//
//  Created by Ashish Sah on 06/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
