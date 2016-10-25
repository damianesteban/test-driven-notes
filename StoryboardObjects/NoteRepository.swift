//
//  NoteRepository.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/21/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import Foundation

class NoteRepository {
    var noteCount: Int {
        return notes.count
    }
    
    var archivedNotesCount: Int {
        return archivedNotes.count
    }
    
    private var notes = [Note]()
    private var archivedNotes = [Note]()
    
    func addNote(note: Note) {
        if !notes.contains(note) {
            notes.append(note)
        }
    }
    
    func itemAtIndex(index: Int) -> Note {
        return notes[index]
    }
    
    func closeItemAtIndex(index: Int) {
        let note = notes.remove(at: index)
        archivedNotes.append(note)
    }
    
    func archivedItemAtIndex(index: Int) -> Note {
        return archivedNotes[index]
    }
    
    func removeAllNotes() {
        _ = notes.removeAll()
        _ = archivedNotes.removeAll()
    }
}
