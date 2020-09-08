//
//  Protocol.swift
//  Matcher
//
//  Created by Matthew McAvey on 9/7/20.
//

import Foundation
import Combine

enum status {
    case pendingResponse
    case queued
    case idle
}

protocol matchMaker {
    var user: user { get set }
    var status: AnyPublisher<status, Never> { get set }
    
    func enqueue()
    func dequeue()
    
}

protocol user {
    var name: String { get set }
    var phoneNumber: String { get set }
    //data and uuid are not in scope yet, revisit as a group
    //var id: uuid { get set }
    //var photo: data { get set }
}

protocol match {
    var teamA: team { get set }
    var teamB: team { get set }
}

struct team {
    var members: [user]?
    var name: String
}

