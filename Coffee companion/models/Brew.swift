//
//  Brew.swift
//  Coffee companion
//
//  Created by w . on 22/03/2024.
//

import Foundation
import SwiftData

@Model
final class Brew {
    var createdAt: Date
    var name: String
    var brewer: Brewer
    var grinder: Grinder
    var beans: CoffeeBeans
    
    var totalWater: Double
    var waterTemp: Double
    
    var grindSize: Double
    var totalCoffee: Double
    
    var steps = [Step]()
    
    var body: Double = 0
    var acidity: Double = 0
    var aromatics: Double = 0
    var sweetness: Double = 0
    var afterTaste: Double = 0
    
    var preInfusion: Double = 0
    var totalBrewTime: Double = 0

    var folder: Folder?
    
    var overallRating: Int?
        
    init(
        name: String,
        brewer: Brewer,
        grinder: Grinder,
        beans: CoffeeBeans,
        totalWater: Double,
        waterTemp: Double,
        grindSize: Double,
        totalCoffee: Double,
        preInfusion: Double,
        totalBrewTime: Double,
        steps: [Step],
        folder: Folder? = nil
    ) {
        self.createdAt = .now
        self.name = name
        self.brewer = brewer
        self.grinder = grinder
        self.beans = beans
        self.totalWater = totalWater
        self.waterTemp = waterTemp
        self.grindSize = grindSize
        self.totalCoffee = totalCoffee
        self.preInfusion = preInfusion
        self.totalBrewTime = totalBrewTime
        self.steps = steps
        self.folder = folder
    }
}
