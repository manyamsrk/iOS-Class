//
//  Location.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

struct Location: Codable, Equatable {
    let coordinate: Coordinate
    var name: String?
    
    init(coordinate: Coordinate, name: String? = nil) {
        self.coordinate = coordinate
        self.name = name
    }
}
