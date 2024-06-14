//
//  CoffeeProducingCountry.swift
//  Coffee companion
//
//  Created by w . on 21/03/2024.
//

import Foundation

enum CoffeeProducingCountry: String, Codable {
    case brazil
    case colombia
    case ethiopia
    case honduras
    case india
    case indonesia
    case kenya
    case mexico
    case papuaNewGuinea
    case peru
    case rwanda
    case tanzania
    case vietnam
    case yemen
    case blend

    func getRegions() -> [Region] {
        switch(self) {
        case .brazil:
            return BazilRegions.allCases
        case .colombia:
            return ColombiaRegions.allCases
        case .ethiopia:
            return EthiopiaRegions.allCases
        case .honduras:
            return HondurasRegions.allCases
        case .india:
            return IndiaRegions.allCases
        case .kenya:
            return KenyaRegions.allCases
        case .indonesia:
            return IndonesiaRegions.allCases
        case .mexico:
            return MexicoRegions.allCases
        case .peru:
            return PeruRegions.allCases
        case .rwanda:
            return RwandaRegions.allCases
        case .tanzania:
            return TanzaniaRegions.allCases
        case .vietnam:
            return VietnamRegions.allCases
        case .yemen:
            return YemenRegions.allCases
        case .papuaNewGuinea:
            return PapuaNewGuineaRegions.allCases
        case .blend:
            return Blend.allCases
        }
    }
}
