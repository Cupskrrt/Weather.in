//
//  WeatherData.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 25/07/22.
//

import Foundation

public struct weatherResponse: Codable{
    public struct Weather: Codable{
        public let main: String?
        public let description: String?
        public let icon: String?
    }
    public let weather:[Weather]
    
    public struct Main: Codable{
        public let temp: Double
    }
    public let main: Main
    
    public let name: String?
}
