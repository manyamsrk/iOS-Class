//
//  LocationListDelegate.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

protocol LocationListViewDelegate: AnyObject {
    func userDidSelectLocation(at index: Int)
    func userAdd(newLocation: Location)
    func userDeleteLocation(at index: Int)
}
