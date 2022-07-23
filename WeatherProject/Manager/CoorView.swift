//
//  CoorView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import SwiftUI
import CoreLocation

struct CoorView: View {
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        let coordinate = self.locationManager.location != nil ? self.locationManager.location!.coordinate : CLLocationCoordinate2D()
        
        Text("\(coordinate.latitude), \(coordinate.longitude)")
    }
}

struct CoorView_Previews: PreviewProvider {
    static var previews: some View {
        CoorView()
    }
}
