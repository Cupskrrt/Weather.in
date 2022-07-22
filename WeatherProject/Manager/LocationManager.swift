//
//  LocationManager.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject{
    
    private let locationManager =  CLLocationManager()
    @Published var location: CLLocation? 
    
    override init(){
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location = locations.last else {
            return
        }
        
        DispatchQueue.main.async {
            self.location = location
        }
    }
    
    func getCoordinate(){
        let coordinate = self.locationManager.location != nil ? self.locationManager.location!.coordinate : CLLocationCoordinate2D()
        
        let api = "32cea26e651369fa37b0807fee657b6b"
        
        //URL
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(coordinate.latitude)&lon=\(coordinate.longitude)&appid=\(api)") else {return}

        
    }
}
