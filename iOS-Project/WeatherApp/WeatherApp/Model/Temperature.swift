//
//  Temperature.swift
//  WeatherApp
//
// Created by Student on 03/28/2022.
//

import Foundation

class Temperature {
    static let celciusGap = 273.15
    let kelvinValue: Double
    
    init(kelvin: Double) {
        self.kelvinValue = kelvin
    }
    
    var text: String {
        return TemperatureUnit.shared.boolValue ? "\(toCelcius)" : "\(toFahrenheit)"
    }
    
    var toCelcius: Int {
        return Int(kelvinValue - Temperature.celciusGap)
    }
    
    var toFahrenheit: Int { // (0K − 273.15) × 9/5 + 32 = -459.7°F
        let convertedValue = (kelvinValue - 273.15) * 9/5 + 32
        return Int(convertedValue)
    }
}
