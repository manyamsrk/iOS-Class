//
//  TemperatureUnitState.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

class TemperatureUnit {
    enum Unit {
        case celcius, fahrenheit
        
        init(bool: Bool) {
            self = bool ? .celcius : .fahrenheit
        }
    }
    static let shared = TemperatureUnit()
    
    var unit: Unit
    
    init() {
        let bool = UserDefaults.standard.bool(forKey: DataKeys.temperatureUnit)
        self.unit = Unit(bool: bool)
    }
    
    init(bool: Bool) {
        self.unit = Unit(bool: bool)
    }
    
    func setUnit(with newValue: Bool) {
        self.unit = Unit(bool: newValue)
    }
    
    var boolValue: Bool {
        return self.unit == .celcius ? true : false
    }
}
