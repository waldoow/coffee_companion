//
//  Folder.swift
//  Coffee companion
//
//  Created by w . on 23/03/2024.
//

import Foundation
import SwiftData

@Model
final class Folder {
    var createdAt: Date
    var name: String
    var brews: [Brew] = [Brew]()
    
    init(name: String) {
        self.createdAt = .now
        self.name = name
    }
}
