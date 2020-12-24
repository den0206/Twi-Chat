//
//  UserProfileView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/17.
//

import SwiftUI

struct UserProfileView: View {
    @State private var selctrdFilter : TweetFilterOptions = .Tweets
    
    var body: some View {
        ScrollView {
            
            VStack {
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectedFilter: $selctrdFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    TweetCell()
                        .padding(.horizontal)
                }
            }
           
            .navigationTitle("Name")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
