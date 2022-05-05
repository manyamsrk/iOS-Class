//
//  Date.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

extension Date {
    func getDayOfWeek() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.string(from: self)
    }
    
    func getHour() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "ha"
        return formatter.string(from: self)
    }
}
