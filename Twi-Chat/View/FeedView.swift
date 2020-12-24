//
//  FeedView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/14.
//

import SwiftUI

struct FeedView: View {
    
    @State private var showNewChat : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            /// Z1
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { i in
                        TweetCell()
                    }
                }
                .padding()
            }
            
            /// Z2
            Button(action: {showNewChat = true}) {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewChat, content: {
                NewTweetView(isPresented: $showNewChat)
            })
            
          
        }
        
       
    }
}



struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
