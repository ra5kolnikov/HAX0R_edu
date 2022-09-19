//
//  ContentView.swift
//  HAX0R
//
//  Created by Виталий Усольцев on 06.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}


//let posts = [
//    Post(id: "1", title: "First"),
//    Post(id: "2", title: "Second"),
//    Post(id: "3", title: "Third")
//
//]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
