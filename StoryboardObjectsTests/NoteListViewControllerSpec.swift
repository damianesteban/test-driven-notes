//
//  NoteListViewControllerSpec.swift
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

class NotesListViewControllerSpec: QuickSpec {
    
    override func spec() {
        var sut: NotesListViewController!
    
        beforeEach {
            sut = ServiceLocator.provideNotesListViewController()
            // We add the line below to ensure `viewDidLoad` is called
            _ = sut.view
        }
        it("is not nil") {
            sut = NotesListViewController()
            XCTAssertNotNil(sut)
        }
        
        it("has a tableView that is not nil after viewDidLoad") {
            XCTAssertNotNil(sut.tableView)
        }
        
        it("should set tableview dataSource") {
            XCTAssertNotNil(sut.tableView.dataSource)
            XCTAssertTrue(sut.tableView.dataSource is NotesListDataProvider)
        }
        
        it("should set delegate in viewDidLoad") {
            XCTAssertNotNil(sut.tableView.delegate)
            XCTAssertTrue(sut.tableView.delegate is NotesListDataProvider)
        }
        
        it("should set delegate and dataSource to be the same object") {
            XCTAssertEqual(sut.tableView.dataSource as? NotesListDataProvider, sut.tableView.delegate as? NotesListDataProvider)
        }
    }
}
