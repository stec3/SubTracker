//
//  Item.swift
//  SubTracker
//
//  Created by Stefano Carta on 24/02/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
