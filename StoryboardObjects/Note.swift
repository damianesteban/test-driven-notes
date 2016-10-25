//
//  Note.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/21/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import Foundation

struct Location {
    let name: String
}

struct Note {
    let title: String
    let description: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String, description: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.description = description
        self.timestamp = timestamp
        self.location = location
    }
}

extension Note: Equatable {
    static func ==(lhs: Note, rhs: Note) -> Bool {
        return true
    }
}
