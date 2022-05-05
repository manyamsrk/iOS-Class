//
//  CreationError.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

enum CreationError: Error {
    case toWeatherViewController
    case toSearchViewController
    
    func andReturn() -> Never {
        fatalError("self")
    }
}
