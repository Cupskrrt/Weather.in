//
//  TodayWeatherData.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 02/08/22.
//

import Foundation

struct todayWeatherResponse: Codable {
    let data: Data
}

struct Data: Codable {
    let areas: [Area]
}

struct Area: Codable {
    
}
