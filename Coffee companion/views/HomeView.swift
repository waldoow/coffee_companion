//
//  HomeView.swift
//  Coffee companion
//
//  Created by w . on 24/03/2024.
//

import SwiftUI

struct HomeView: View {
    let grinder: Grinder
    let beans: CoffeeBeans
    let brewer: Brewer
    let brew: Brew
    
    init() {
        self.grinder = Grinder(name: "Varia VS3", type: .electric)
        self.beans = CoffeeBeans(
            name: "Beans 1",
            weight: 250,
            processingMethod: .washed,
            roastLevel: .medium,
            altitude: .high,
            country: .ethiopia,
            region: EthiopiaRegions.djimmahRegion.name
        )
        
        self.brewer = Brewer(name: "V60", type: .pourOver)
        self.brew = Brew(
            name: "Brew 1",
            brewer: self.brewer,
            grinder: self.grinder,
            beans: self.beans,
            totalWater: 250,
            waterTemp: 98,
            grindSize: 13,
            totalCoffee: 15,
            preInfusion: 30,
            totalBrewTime: 3.24,
            steps: [
                Step(timer: TimeInterval(signOf: 0, magnitudeOf: 25), description: "don't know")
        ])
    }
    
    var body: some View {
        NavigationStack {
//            CreateBrewForm()
            VStack(spacing: 20) {
                HeroSection
                BrewsSection
            }
            .navigationTitle("Coffee Companion")
            .safeAreaPadding(.horizontal)
        }
    }

    
    
    
    
    var BrewsSection: some View {
        VStack(alignment: .leading) {
            Text("Your last brews")
                .font(.headline)

            ScrollView(showsIndicators: false ) {
                GroupBox(
                    label: Text(self.brew.name).font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/),
                    content: {
                        beansInfos
                        GroupBox {
                            brewInfos
                        }

                        grinderAndBrewerPills
                    }
                )
                .frame(width: .infinity)
                .groupBoxStyle(.brew)
            }

            
        }

        
    }
    
    var brewInfos: some View {
        HStack(spacing: 20) {
            HStack {
                Image(systemName: "drop")
                Text(brew.totalWater.formatted())
            }
            
            HStack {
                Image(systemName: "aqi.low")
                Text(brew.totalCoffee.description)
            }
            
            HStack {
                Image(systemName: "thermometer.medium")
                Text("\(brew.waterTemp.formatted())")
            }

//            HStack {
//                Image(systemName: "thermometer.medium")
//                Text("\(brew.preInfusion.formatted())")
//            }

            
            Spacer()
        }
        .font(.footnote)
    }
    
    var grinderAndBrewerPills: some View {
        HStack {
            Text(brewer.name)
                .padding(.horizontal, 6)
                .padding(.vertical, 3)
                .foregroundColor(.white)
                .background(.orange.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 8))

            Text(grinder.name)
                .padding(.horizontal, 6)
                .padding(.vertical, 3)
                .foregroundColor(.white)
                .background(.orange.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .font(.subheadline)
    }
    
    var HeroSection: some View {
        VStack(alignment: .leading) {
            Text("Quick access")
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Rectangle()
                        .frame(width: 150, height: 150)
                    Rectangle()
                        .frame(width: 150, height: 150)
                    Rectangle()
                        .frame(width: 150, height: 150)
                    Rectangle()
                        .frame(width: 150, height: 150)
                }
            }
        }
        .padding(.vertical)
    }

    var beansInfos: some View {
        VStack(alignment: .leading) {
            Text(beans.country.rawValue)
                .font(.title3)
            Text(beans.region)
                .font(.footnote)
            Text(beans.name)
                .font(.footnote)
        }
    }
}

#Preview {
    HomeView()
}
