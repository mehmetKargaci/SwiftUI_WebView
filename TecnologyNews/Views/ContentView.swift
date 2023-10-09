//
//  ContentView.swift
//  TecnologyNews
//
//  Created by Mehmet on 08.10.23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                
                HStack {
                    Text(String(post.points!))
                    Text(post.title)
                }

            }

            .navigationTitle("Technology News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
    }
}

#Preview {
    ContentView()
}


//struct Post: Identifiable {
//    let id: String
//    let title: String
    
//}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Halo"),
//    Post(id: "3", title: "Selam")
//    
//    ]
