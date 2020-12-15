//
//  ConversationsView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct ConversationsView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            /// Z1
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { i in
                        ConversationsCell()
                    }
                }
                
            }
            
            /// Z2
            Button(action: {}) {
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
            
          
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
