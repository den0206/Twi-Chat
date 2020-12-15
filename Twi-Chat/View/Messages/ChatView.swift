//
//  ChatView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct ChatView: View {
    
    @State private var text : String = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(mockMessages) { message in
                        
                        MessageCell(message: message)
                        
                    }
                }
            }
            .padding(.top)
            
            MessageInputView(messageText: $text)
                .padding()
        }
    }
}
struct MessageCell : View {
    let message : Message
    
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(BubblePath(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(BubblePath(isFromCurrentUser: false))
                        .foregroundColor(.black)
                        
                    
                }
                .padding(.horizontal)
                Spacer()

            }
           
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
