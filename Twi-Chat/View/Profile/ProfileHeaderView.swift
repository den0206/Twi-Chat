//
//  UserProfileHeader.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/17.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        
        VStack {
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Text("Bruce")
                .font(.system(size: 16,weight : .semibold))
                .padding(.top,8)
            
            Text("`Batman")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Desscriptions")
                .font(.system(size: 14))
                .padding(.top,8)
            
            HStack(spacing :40) {
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack {
                    
                    Text("25")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                }
            }
            .padding()
            
            ProfileActionButtonView(isCurrentUser: false)
                .padding()
        
            
        }
    }
}

struct UserProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
