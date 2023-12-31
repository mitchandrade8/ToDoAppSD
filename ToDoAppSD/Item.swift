//
//  ToDoItem.swift
//  ToDoAppSD
//
//  Created by Mitch Andrade on 6/13/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var title: String
    var timestamp: Date
    var isCritical: Bool
    var isCompleted: Bool
    
    init(title: String = "",
         timestamp: Date = .now,
         isCritical: Bool = false,
         isCompleted: Bool = false) {
        self.title = title
        self.timestamp = timestamp
        self.isCritical = isCritical
        self.isCompleted = isCompleted
    }
}

