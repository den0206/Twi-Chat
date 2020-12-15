//
//  UserCell.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
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
                
                Text("description")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
