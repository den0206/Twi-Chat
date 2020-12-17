//
//  FilterButtonView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/17.
//

import SwiftUI

enum TweetFilterOptions : Int, CaseIterable {
    
    case Tweets
    case Replies
    case Likes
    
    var title : String {
        switch self {
      
        case .Tweets:
            return "Tweets"
        case .Replies:
            return "Tweets & Replies"
        case .Likes:
            return "Likes"
        }
    }
    
    
    
}

struct FilterButtonView: View {
    
    @Binding var selectedFilter : TweetFilterOptions

    private let undelineWidth = UIScreen.main.bounds.width / CGFloat(TweetFilterOptions.allCases.count)
    
    private var padding : CGFloat {
        let rawValue = CGFloat(selectedFilter.rawValue)
        let count = CGFloat(TweetFilterOptions.allCases.count)
        return (UIScreen.main.bounds.width / count) * rawValue + 16
    }
    
    var body: some View {
        
        VStack(alignment:.leading) {
            HStack {
                ForEach(TweetFilterOptions.allCases, id : \.self) { option in
                    
                    Button(action: {selectedFilter = option}, label: {
                        Text(option.title)
                            .frame(width: undelineWidth - 8)
                            .foregroundColor(.blue)
                    })
                  
                }
            }
            
            /// switch line
            Rectangle()
                .frame(width: undelineWidth - 24, height: 3,alignment:.center)
                .foregroundColor(.blue)
                .padding(.leading,padding)
                .animation(.spring())
        }
    }
}


