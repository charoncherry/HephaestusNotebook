//
//  Photo.swift
//  HephaestusNotebook
//
//  Created by Cherry-Rose Anderson on 10/9/26.
//

import Foundation
import SwiftData

@Model
class Photo: Timelineable {
    var timestamp: Date
    var timelineType: TimelineType
    
    var imageData: Data?
    var title: String
    var note: String
    var entryDate: Date
    
    //MARK: Foreign Keys
    var forProgressNote: ProgressNote?
    
    init(imageData: Data? = nil, title: String = "", note: String = "", entryDate: Date = .now) {
        self.timestamp = .now
        self.timelineType = .photo
        
        self.imageData = imageData
        self.title = title
        self.note = note
        self.entryDate = entryDate
    }
}
