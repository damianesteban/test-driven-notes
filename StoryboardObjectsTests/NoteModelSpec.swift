//
//  StoryboardObjectsTests.swift
//  StoryboardObjectsTests
//
//  Created by Damian Esteban on 10/20/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import StoryboardObjects

class NoteModelSpec: QuickSpec {
    override func spec() {
        var sut: Note!
        
        it("initializes with a title") {
            sut = Note(title: "Title")
            expect(sut.title).notTo(equal(nil))
        }
        
        it("initializes with a title and description") {
            sut = Note(title: "Title", description: "A description")
            expect(sut.description).to(equal("A description"))
        }
        
        it("initializes with a title, description and timestamp") {
            sut = Note(title: "Title", description: "A description", timestamp: 10.0)
            expect(sut.timestamp).to(equal(10.0))
        }
        
        it("initializes with a title, description, timstamp and Location") {
            let location = Location(name: "A location")
            sut = Note(title: "A Title", description: "A description", timestamp: 10.0, location: location)
            expect(location.name).to(equal(sut.location?.name))
        }
        
        it("should be equal") {
            let firstNote = Note(title: "Note")
            let secondNote = Note(title: "Note")
            expect(firstNote).to(equal(secondNote))
        }
    }
    
}
