//
//  CoffeeProductingRegion.swift
//  Coffee companion
//
//  Created by w . on 21/03/2024.
//
//

import Foundation

protocol Region: Codable {
    var name: String { get }
    
}

extension Region where Self: RawRepresentable, Self.RawValue == String {
    var name: String {
        return self.rawValue
    }
}

// Brazil
enum BazilRegions: String, CaseIterable, Region {
    case cerradoRegion = "Cerrado Region"
    case southMinasRegion = "South Minas Region"
    case mogianaRegion = "Mogiana Region"
    case paulistaRegion = "Paulista Region"
    case zonaDaMataRegion = "Zona da Mata Region"
}
    
// Colombia
enum ColombiaRegions: String, CaseIterable, Region {
    case antioquiaRegion = "Antioquia Region"
    case caldasRegion = "Caldas Region"
    case caucaRegion = "Cauca Region"
    case cundinamarcaRegion = "Cundinamarca Region"
    case huilaRegion = "Huila Region"
    case nariñoRegion = "Nariño Region"
    case quindíoRegion = "Quindío Region"
    case risaraldaRegion = "Risaralda Region"
    case tolimaRegion = "Tolima Region"
    case valleDelCaucaRegion = "Valle del Cauca Region"
}
    
// Ethiopia
enum EthiopiaRegions: String, CaseIterable, Region {
    case sidamoRegion = "Sidamo Region"
    case yirgacheffeRegion = "Yirgacheffe Region"
    case harrarRegion = "Harrar Region"
    case limuRegion = "Limu Region"
    case gimbiRegion = "Gimbi Region"
    case lekemptiRegion = "Lekempti Region"
    case djimmahRegion = "Djimmah Region"
}

// Honduras
enum HondurasRegions: String, CaseIterable, Region {
    case copánRegion = "Copán Region"
    case comayaguaRegion = "Comayagua Region"
    case elParaísoRegion = "El Paraíso Region"
    case olanchoRegion = "Olancho Region"
    case intibucáRegion = "Intibucá Region"
}
 
// India
enum IndiaRegions: String, CaseIterable, Region {
    case babaBudanGiriRegion = "Baba Budan Giri Region"
    case nilgiriHillsRegion = "Nilgiri Hills Region"
    case pulneyHillsRegion = "Pulney Hills Region"
    case shevaroyHillsRegion = "Shevaroy Hills Region"
    case chikmagalurRegion = "Chikmagalur Region"
    case coorgRegion = "Coorg Region"
    case wayanadRegion = "Wayanad Region"
}

// Indonesia
enum IndonesiaRegions: String, CaseIterable, Region {
    case sumatraRegion = "Sumatra Region"
    case javaRegion = "Java Region"
    case sulawesiRegion = "Sulawesi Region"
    case baliRegion = "Bali Region"
    case floresRegion = "Flores Region"
}

// Kenya
enum KenyaRegions: String, CaseIterable, Region {
    case centralProvinceRegion = "Central Province Region"
    case easternProvinceRegion = "Eastern Province Region"
    case riftValleyRegion = "Rift Valley Region"
    case westernKenyaRegion = "Western Kenya Region"
}
 
// Mexico
enum MexicoRegions: String, CaseIterable, Region {
    case chiapasRegion = "Chiapas Region"
    case veracruzRegion = "Veracruz Region"
    case oaxacaRegion = "Oaxaca Region"
    case pueblaRegion = "Puebla Region"
    case jaliscoRegion = "Jalisco Region"
}

// Papua New Guinea
enum PapuaNewGuineaRegions: String, CaseIterable, Region {
    case westernHighlandsRegion = "Western Highlands Region"
    case easternHighlandsRegion = "Eastern Highlands Region"
    case morobeRegion = "Morobe Region"
    case madangRegion = "Madang Region"
}

// Peru
enum PeruRegions: String, CaseIterable, Region {
    case cuscoRegion = "Cusco Region"
    case junínRegion = "Junín Region"
    case punoRegion = "Puno Region"
    case cajamarcaRegion = "Cajamarca Region"
    case amazonasRegion = "Amazonas Region"
}

// Rwanda
enum RwandaRegions: String, CaseIterable, Region {
    case westernProvinceRegion = "Western Province Region"
    case northernProvinceRegion = "Northern Province Region"
    case southernProvinceRegion = "Southern Province Region"
    case easternProvinceRegion = "Eastern Province Region"
}

// Tanzania
enum TanzaniaRegions: String, CaseIterable, Region {
    case kilimanjaroddRegion = "Kilimanjaro Region"
    case arushaRegion = "Arusha Region"
    case mbeyaRegion = "Mbeya Region"
    case ruvumaRegion = "Ruvuma Region"
    case kigomaRegion = "Kigoma Region"
}

// Vietnam
enum VietnamRegions: String, CaseIterable, Region {
    case centralHighlandsRegion = "Central Highlands Region"
    case southeastRegion = "Southeast Region"
}

// Yemen
enum YemenRegions: String, CaseIterable, Region {
    case sanaʼaRegion = "Sanaʼa Region"
    case ibbRegion = "Ibb Region"
    case taizRegion = "Taiz Region"
    case alMahwitRegion = "Al Mahwit Region"
    case raymahRegion = "Raymah Region"
}

enum Blend: String, CaseIterable, Region {
    case blend = "Blend"
}
