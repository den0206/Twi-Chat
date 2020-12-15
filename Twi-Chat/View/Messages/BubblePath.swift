//
//  BubbleView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import SwiftUI

struct BubblePath: Shape {
    
    var isFromCurrentUser : Bool
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,isFromCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }

}


struct BubbleView_Previews: PreviewProvider {
    static var previews: some View {
        BubblePath(isFromCurrentUser: true)
    }
}
