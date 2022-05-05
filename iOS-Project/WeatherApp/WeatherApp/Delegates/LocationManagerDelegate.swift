//
//  LocationManagerDelegate.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

protocol LocationManagerDelegate: AnyObject {
    func locationManagerDidUpdate(currentLocation: Location)
}
