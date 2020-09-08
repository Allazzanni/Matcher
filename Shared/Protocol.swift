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

protocol MatchMaker {
    var user: user { get set }
    var status: AnyPublisher<Status, Never> { get set }
    
    func enqueue()
    func dequeue()
    
}

protocol User {
    var name: String { get set }
    var phoneNumber: String { get set }
    
    var id: UUID { get set }
    var photo: Data { get set }
}

protocol Match {
    var firstTeam: Team { get set }
    var secondTeam: Team { get set }
}

protocol Team {
    var members: [user]? { get set }
    var name: String { get set }
}

