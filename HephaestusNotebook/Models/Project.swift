//
//  Project.swift
//  HephaestusNotebook
//
//  Created by Cherry-Rose Anderson on 10/9/26.
//

import Foundation

import Foundation
import SwiftData

@Model
class Project: Timelineable {
    var timestamp: Date
    var timelineType: TimelineType
    
    var title: String
    var note: String
    var entryDate: Date
        
    @Relationship(deleteRule: .cascade, inverse: \ProgressNote.forProject)
    var progressNotes: [ProgressNote] = [ProgressNote]()
    
    init(title: String, note: String, entryDate: Date = .now) {
        self.timestamp = .now
        self.timelineType = .project
        
        self.title = title
        self.note = note
        self.entryDate = entryDate
        
    }
}
