//
//  CoffeeBeans.swift
//  Coffee companion
//
//  Created by w . on 20/03/2024.
//

import Foundation
import SwiftData

@Model
final class CoffeeBeans {
    var name: String
    var weight: Int
    var processingMethod: ProcessingMethod
    var roastLevel: RoastLevel
    var altitudeRange: String
    var country: CoffeeProducingCountry
    var roastDate: Date?
    var region: String

    init(
        name: String,
        weight: Int,
        processingMethod: ProcessingMethod,
        roastLevel: RoastLevel,
        altitude: AltitudeRange,
        country: CoffeeProducingCountry,
        region: String
    ) {
        self.name = name
        self.weight = weight
        self.processingMethod = processingMethod
        self.roastLevel = roastLevel
        self.altitudeRange = altitude.description
        self.country = country
        self.region = region
    }
}
