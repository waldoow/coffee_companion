//
//  Step.swift
//  Coffee companion
//
//  Created by w . on 23/03/2024.
//

import Foundation

class Step: Codable {
    var timer: TimeInterval
    var description: String
    
    init(timer: TimeInterval, description: String) {
        self.timer = timer
        self.description = description
    }
}
