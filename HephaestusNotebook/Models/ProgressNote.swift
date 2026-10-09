//
//  ProgressNote.swift
//  HephaestusNotebook
//
//  Created by Cherry-Rose Anderson on 10/9/26.
//

import Foundation
import SwiftData

@Model
class ProgressNote: Timelineable {
    var timestamp: Date
    var timelineType: TimelineType
    
    var title: String
    var note: String
    var entryDate: Date
    
    //MARK: Primary Keys
    @Relationship(deleteRule: .cascade, inverse: \Photo.forProgressNote)
    var photos: [Photo] = [Photo]()
    
    //MARK: Foreign Keys
    var forProject: Project?
    
    init(title: String, note: String, entryDate: Date = .now) {
        self.timestamp = .now
        self.timelineType = .progressNote
        
        self.title = title
        self.note = note
        self.entryDate = entryDate
    }
}

