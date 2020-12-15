//
//  Message.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/15.
//

import Foundation

struct Message  : Identifiable{
    let id : Int
    let imageName : String
    let messageText : String
    let isCurrentUser : Bool
}

let mockMessages : [Message] = [Message(id: 0, imageName: "batman", messageText: "aaa", isCurrentUser: true),
                                Message(id: 1, imageName: "batman", messageText: "bbb", isCurrentUser: false),
                                Message(id: 2, imageName: "batman", messageText: "ccc", isCurrentUser: true),
                                Message(id: 3, imageName: "batman", messageText: "ddd", isCurrentUser: true)
]
