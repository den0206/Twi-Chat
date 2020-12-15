//
//  ConversationsCell.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct ConversationsCell: View {
    var body: some View {
        VStack {
            HStack(spacing :12) {
                
                Image("venom-10")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text("Name")
                        .font(.system(size: 14,weight : .semibold))
                        
                    
                    Text("dcOnverations.......fasdffdadfsad")
                        .font(.system(size: 14))
                        .lineLimit(2)
                }
                .foregroundColor(.primary)
                .padding(.trailing)
                
               Spacer()
            }
            
            Divider()
        }
     
        
    }
}

struct ConversationsCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsCell()
    }
}
