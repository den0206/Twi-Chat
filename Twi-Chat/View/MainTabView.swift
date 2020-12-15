//
//  MainTabView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/14.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                ConversationsView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Message")
                    }
            }
            
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

