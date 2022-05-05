//
//  ServiceError.swift
//  WeatherApp
//
//  Created by Student on 03/28/2022.
//

import Foundation

enum ServiceError: Error {
    case urlError
    case networkRequestError
    case impossibleToGetJSONData
    case impossibleToParseJSON
}


