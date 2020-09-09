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
    case matched
}

protocol MatchMaker {
    var user: User { get set }
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

protocol Team {
    var members: [User]? { get set }
    var name: String { get set }
}

