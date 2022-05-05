//
//  WeatherListItem.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import UIKit

protocol WeatherPresentable {
    var icon: UIImage { get }
    var temperatureText: String { get }
    var dateText: String { get }
}
