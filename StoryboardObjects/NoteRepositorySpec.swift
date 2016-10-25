//
//  NoteRepositorySpec.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/21/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import StoryboardObjects

class NoteRepositorySpec: QuickSpec {
    override func spec() {
        var sut: NoteRepository!
        
        beforeEach {
            sut = NoteRepository()
        }
        
        it("has an initial note count of zero") {
            expect(sut.noteCount).to(equal(0))
        }
        
        it("has a note count of one after adding a note") {
            sut.addNote(note: Note(title: "Note"))
            expect(sut.noteCount).to(equal(1))
        }
        
        it("should return a previously added item") {
            let note = Note(title: "Note")
            sut.addNote(note: note)
            let returnedItem = sut.itemAtIndex(index: 0)
            expect(note.title).to(equal(returnedItem.title))
        }
        
        it("should archive notes") {
            sut.addNote(note: Note(title: "Title"))
            sut.closeItemAtIndex(index: 0)
            expect(sut.archivedNotesCount).to(equal(1))
        }
        
        it("should return a previously archived note") {
            let note = Note(title: "Note")
            sut.addNote(note: note)
            sut.closeItemAtIndex(index: 0)
            
            let returnedNote = sut.archivedItemAtIndex(index: 0)
            expect(note.title).to(equal(returnedNote.title))
        }
        
        it("should remove all notes") {
            sut.addNote(note: Note(title: "nknkn"))
            sut.addNote(note: Note(title: "dfdfdf"))
            sut.closeItemAtIndex(index: 0)
            sut.removeAllNotes()
            
            expect(sut.noteCount).to(equal(0))
            expect(sut.archivedNotesCount).to(equal(0))
        }
        
        it("should not increase the count if the same note is added") {
            sut.addNote(note: Note(title: "Note"))
            sut.addNote(note: Note(title: "Note"))
            
            expect(sut.noteCount).to(equal(1))
        }
    }
    
}
