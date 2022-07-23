//
//  WeatherViewModel.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import Foundation
import SwiftUI

private let defaultIcon = "?"
private let iconMap = [
    "Drizzle" : "cloud.rain.fill",
    "Thunderstorm" : "cloud.bolt.rain",
    "Rain" : "cloud.heavyrain.fill",
    "Clear" : "sun.max",
    "Cloud" : "cloud.fill",
]

public class weatherViewModel: ObservableObject{
    @Published var cityName: String = "City Name"
    @Published var temprature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var weatherIcon: String = "moon"

    
    public let weatherApi : WeatherAPI
    
    public init(weatherApi : WeatherAPI){
        self.weatherApi = weatherApi
    }
    
    public func refresh(){
        weatherApi.loadWeatherData{ weather in
            DispatchQueue.main.async {
                self.cityName = weather.city
                self.temprature = "\(weather.temprature)°C"
                self.weatherDescription = weather.description.capitalized
                self.weatherIcon = iconMap [weather.iconName] ?? defaultIcon
            }
        }
    }
}
