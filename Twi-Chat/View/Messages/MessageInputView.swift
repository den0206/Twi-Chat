//
//  MessageInputView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct MessageInputView: View {
    
    @Binding var messageText : String
    
    var body: some View {
        HStack {
            TextField("Message", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight : 20)
            
            Button(action: {}) {
                Text("Send")
            }
        }
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(messageText: .constant(""))
    }
}
