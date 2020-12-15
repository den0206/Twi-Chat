//
//  NewMessageView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct NewMessageView: View {
    
    @State private var searchText : String = ""
    @Binding var show :Bool
    @Binding var startChat : Bool
    
    var body: some View {
        
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    
                    Button(action: {
                        show.toggle()
                        startChat.toggle()
                        
                    }) {
                        UserCell()

                    }
                }
            }

        }
      
        
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show: .constant(true), startChat: .constant(true))
    }
}
