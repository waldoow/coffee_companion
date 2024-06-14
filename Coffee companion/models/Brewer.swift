//
//  Brewer.swift
//  Coffee companion
//
//  Created by w . on 22/03/2024.
//

import Foundation
import SwiftData

@Model
final class Brewer {
    var name: String
    var type: CoffeeBrewerType
    
    init(name: String, type: CoffeeBrewerType) {
        self.name = name
        self.type = type
    }
}
