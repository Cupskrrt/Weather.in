//
//  WeatherViewModel.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import Foundation
import SwiftUI
import CoreLocation

class WeatherViewModel: ObservableObject{
    
    @ObservedObject private var locationManager = LocationManager()
    
    @Published var main: String = ""
    @Published var description: String = ""
    @Published var icon: String = ""
    @Published var temp: String = ""
    @Published var name: String = ""
    
    init(){
        
        let coordinate = self.locationManager.location != nil ? self.locationManager.location!.coordinate : CLLocationCoordinate2D()
        
        Misc().getData(urlString: "https://api.openweathermap.org/data/2.5/weather?lat=\(coordinate.latitude)&lon=\(coordinate.longitude)&appid=\(apiKeyWeather)&units=metric") { (weatherResult:weatherResponse?) in
            if let weatherResult = weatherResult {
                DispatchQueue.main.async { [self] in
                    self.main = weatherResult.weather[0].main ?? "No Weather"
                    self.description = weatherResult.weather[0].description ?? "No Description"
                    self.icon = weatherResult.weather[0].icon ?? "No Icon"
                    self.temp = "\(weatherResult.main.temp)°C"
                    self.name = weatherResult.name ?? "No City"
                }
            }
        }
    }
    
}
