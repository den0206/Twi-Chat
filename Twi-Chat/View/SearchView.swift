//
//  SearchView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText : String = ""
    
    var body: some View {
        
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    UserCell()
                }
            }

        }
      
        
    }
}

struct SearchBar : View {
    
    @Binding var text : String
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal , 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,8)
                    }
                    
                )
        }
        .padding(.horizontal,10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
