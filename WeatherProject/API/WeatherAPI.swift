//
//  WeatherAPI.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import Foundation
import CoreLocation

public final class WeatherAPI: NSObject{
    
    private let locationManager = CLLocationManager()
    private let APIKEY = "29028be3ee77bbc292618a77dd161e12"
    private var completionHandler: ((Weather) -> Void)?
    
    public override init(){
        super.init()
        locationManager.delegate = self
    }
    
    public func loadWeatherData(_ completionHandler: @escaping((Weather) -> Void)){
        self.completionHandler = completionHandler
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
   private func makeDataRequest(forCoordinates coordinates: CLLocationCoordinate2D){
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(coordinates.latitude)&lon=\(coordinates.longitude)&appid=\(APIKEY)&units=metric") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data else {return}
            if let response = try? JSONDecoder().decode(APIResponse.self, from: data){
                self.completionHandler?(Weather(response: response))
            }
        }
        .resume()
    }
}

extension WeatherAPI: CLLocationManagerDelegate{
    public func locationManager(_ manager: CLLocationManager, didupdateLocation locations: [CLLocation]){
        guard let location = locations.first else {return}
        makeDataRequest(forCoordinates: location.coordinate)
    }
    
    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Something went wrong: \(error.localizedDescription)")
    }
}



struct APIResponse: Decodable{
    let name: String
    let main: APIMain
    let weather: [APIWeather]
}

struct APIMain: Decodable{
    let temp: Double
}

struct APIWeather: Decodable{
    let description: String
    let iconName: String
    
    enum CodingKeys: String, CodingKey{
        case description
        case iconName = "main"
    }
}
