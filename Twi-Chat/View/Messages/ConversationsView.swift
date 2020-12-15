//
//  ConversationsView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct ConversationsView: View {
    
    @State private var showSheet = false
    @State private var showChat  = false
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            NavigationLink(destination: ChatView(), isActive: $showChat, label: {})
            
            /// Z1
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { i in
                        NavigationLink(destination: ChatView()) {
                            ConversationsCell()

                        }
                    }
                }
                
            }
            
            /// Z2
            Button(action: {showSheet.toggle()}) {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $showSheet) {
                NewMessageView(show: $showSheet, startChat: $showChat)
            }
            
          
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
