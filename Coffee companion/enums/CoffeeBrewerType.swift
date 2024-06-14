//
//  CoffeeMakersTypes.swift
//  Coffee companion
//
//  Created by w . on 22/03/2024.
//

import Foundation

enum CoffeeBrewerType: String, CaseIterable, Codable {
    case dripCoffeeMaker = "Drip Coffee Maker"
    case frenchPress = "French Press"
    case pourOver = "Pour Over"
    case semiAutomaticEspressoMachine = "Semi-automatic Espresso Machine"
    case automaticEspressoMachine = "Automatic Espresso Machine"
    case siphonVacuumBrewer = "Siphon/Vacuum Brewer"
    case coldBrewer = "Cold Brew Maker"
    case percolator = "Percolator"
    case turkishGreekCoffeeMaker = "Turkish/Greek Coffee Maker"
    case manualImmersionBrewer = "Manual/Immersion Brewer"
}
