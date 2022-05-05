
//
//  HourlyWeather.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import UIKit

class HourlyWeatherItem: Weather, WeatherPresentable {
    var icon: UIImage {
        return WeatherIconImagePicker.getImage(named: iconName)
    }
    
    var temperatureText: String {
        return "\(temperature: self.temperature)"
    }
    
    var dateText: String {
        return self.date.getHour()
    }
}
