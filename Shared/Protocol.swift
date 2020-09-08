//
//  Protocol.swift
//  Matcher
//
//  Created by Matthew McAvey on 9/7/20.
//

import Foundation
import Combine

enum Status {
    case pendingResponse
    case queued
    case idle
}

protocol matchMaker {
    var user: user { get set }
    var status: AnyPublisher<Status, Never> { get set }
    
    func enqueue()
    func dequeue()
    
}

protocol user {
    var name: String { get set }
    var phoneNumber: String { get set }
    
    var id: UUID { get set }
    var photo: Data { get set }
}

protocol match {
    var firstTeam: Team { get set }
    var secondTeam: Team { get set }
}

struct Team {
    var members: [user]?
    var name: String
}

