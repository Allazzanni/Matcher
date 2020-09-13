//
//  CDUser.swift
//  Matcher (iOS)
//
//  Created by Alexander Harb  on 9/10/20.
//

import Foundation
import CoreData

extension CDUser: User {
    public var name: String {
        get {
            return cdName!
        }
        set {
            cdName = newValue
        }
    }
    
    public var phoneNumber: String {
        get {
            return cdPhoneNumber!
        }
        set {
            cdPhoneNumber = newValue
        }
    }
    
    public var id: UUID {
        get {
            return cdID!
        }
        set {
            cdID = newValue
        }
    }
    
    public var photo: Data? {
        get {
            return cdPhoto
        }
        set {
            cdPhoto = newValue
        }
    }
    
    public static var allUsersFetchRequest: NSFetchRequest<CDUser> {
        let request: NSFetchRequest<CDUser> = CDUser.fetchRequest()
        request.sortDescriptors = []
        return request
    }
}
