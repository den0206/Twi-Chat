//
//  TweetCell.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/14.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .top,spacing :12) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading,spacing :4) {
                    HStack {
                        Text("Bruce")
                            .font(.system(size: 14, weight : .semibold))
                        
                        Text("batman ")
                            .foregroundColor(.gray)
                       
                        Text("2w")
                            .foregroundColor(.gray)

                    }
                   
                    
                    Text("PostPostPostPostPostPostPostPostPost")
                }
                
              
            }
            .padding(.bottom)
            .padding(.trailing)
            
            /// Icons
            
            HStack {
                Button(action: {}) {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                
                Spacer()

                Button(action: {}) {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                
                Spacer()

                
                Button(action: {}) {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
            }
            .foregroundColor(.gray)
            .padding(.horizontal)
           
            Divider()
        }
        .padding(.leading,-16)
    
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
