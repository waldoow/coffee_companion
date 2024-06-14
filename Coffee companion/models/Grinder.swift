//
//  Grinder.swift
//  Coffee companion
//
//  Created by w . on 22/03/2024.
//

import Foundation
import SwiftData

@Model
final class Grinder {
    var name: String
    var type: GrinderType
    var burrs: String?
    
    init(name: String, type: GrinderType, burrs: String? = nil) {
        self.name = name
        self.type = type
        self.burrs = burrs
    }
}
