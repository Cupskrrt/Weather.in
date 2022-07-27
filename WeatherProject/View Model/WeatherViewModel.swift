//
//  WeatherViewModel.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import Foundation

class WeatherViewModel: ObservableObject{
    @Published var main: String = ""
    @Published var description: String = ""
    @Published var icon: String = ""
    @Published var temp: String = ""
    @Published var name: String = ""
    
    init(){
        Misc().getData(urlString: "https://api.openweathermap.org/data/2.5/weather?lat=-6,248244&lon=106,966206&appid=29028be3ee77bbc292618a77dd161e12&units=metric") { (weatherResult:weatherResponse?) in
            if let weatherResult = weatherResult {
                DispatchQueue.main.async {
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
