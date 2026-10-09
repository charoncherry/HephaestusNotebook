//
//  Timelineable.swift
//  HephaestusNotebook
//
//  Created by Cherry-Rose Anderson on 10/9/26.
//

import Foundation

protocol Timelineable {
    var timestamp: Date { get }
    var timelineType: TimelineType { get }
    
    var title: String { get set }
    var note: String { get set }
    var entryDate: Date { get set }
}
