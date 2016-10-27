//
//  NotesListViewDataSource.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/27/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import Foundation
import UIKit

fileprivate enum Section: Int {
    case open
    case archived
}

class NotesListDataProvider: NSObject, UITableViewDataSource {
    
    var noteRepository: NoteRepository?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let noteRepository = noteRepository else { return 0 }
        guard let noteSection = Section(rawValue: section) else {
            fatalError("No section for tableView")
        }
        
        let numberOfRows: Int
        
        switch noteSection {
        case .open:
            numberOfRows = noteRepository.noteCount
        case .archived:
            numberOfRows = noteRepository.archivedNotesCount
        }
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
