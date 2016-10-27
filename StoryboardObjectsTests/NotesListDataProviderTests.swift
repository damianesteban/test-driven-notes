//
//  NotesListDataProviderTests.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/27/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import UIKit
import Quick
import Nimble
import XCTest
@testable import StoryboardObjects

class NotesListProviderSpec: QuickSpec {
    override func spec() {
        var sut: NotesListDataProvider!
        var tableView: UITableView!
        
        beforeEach {
            sut = NotesListDataProvider()
            sut.noteRepository = NoteRepository()
            tableView = UITableView()
            tableView.dataSource = sut
        }
        
        it("should have two sections") {
            let numberOfSections = tableView.numberOfSections
            XCTAssertEqual(numberOfSections, 2)
        }
        
        it("should have a row count in section one that is equal to the count of notes") {
            
            sut.noteRepository?.addNote(note: Note(title: "Note"))
            XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
        }
        
        
    }
}
