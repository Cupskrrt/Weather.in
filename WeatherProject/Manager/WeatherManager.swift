//
//  WeatherManager.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import Foundation


public struct Weather {
    let city: String
    let temprature: String
    let description: String
    let iconName: String
    
    init(response: APIResponse){
        city = response.name
        temprature = "\(Int(response.main.temp))"
        description = response.weather.first?.description ?? ""
        iconName = response.weather.first?.iconName ?? ""
    }
}
