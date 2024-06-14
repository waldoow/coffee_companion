//
//  AltitudeRange.swift
//  Coffee companion
//
//  Created by w . on 21/03/2024.
//

import Foundation

enum AltitudeRange: Int, Codable {
    case low = 600
    case mediumLow = 900
    case mediumHigh = 1200
    case high = 1500
    case veryHigh = 1800
    case extreme = 2100
    
    var description: String {
        switch self {
        case .low:
            return "Below \(AltitudeRange.low) meters"
        case .mediumLow:
            return "\(AltitudeRange.low) - \(AltitudeRange.mediumLow) meters"
        case .mediumHigh:
            return "\(AltitudeRange.mediumLow) - \(AltitudeRange.mediumHigh) meters"
        case .high:
            return "\(AltitudeRange.mediumHigh) - \(AltitudeRange.high) meters"
        case .veryHigh:
            return "\(AltitudeRange.high) - \(AltitudeRange.veryHigh) meters"
        case .extreme:
            return "Above \(AltitudeRange.veryHigh) meters"
        }
    }
}
