//
//  WindDirection.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

enum WindDirection: Int {
    case n = 0, nne, ne
    case ene, e, ese
    case se, sse, s
    case ssw, sw, wsw, w
    case wnw, nw, nnw
    
    init(degree: Double) {
        let convertedValue = Int((degree - 22.5) + 0.5)
        self = WindDirection(rawValue: convertedValue % 16) ?? .n
    }
}
