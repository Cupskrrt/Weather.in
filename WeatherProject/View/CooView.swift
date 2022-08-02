//
//  CooView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 02/08/22.
//

import SwiftUI
import CoreLocation

struct CooView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    
    var body: some View {
        let coordinate = self.locationManager.location != nil ? self.locationManager.location!.coordinate : CLLocationCoordinate2D()
        VStack{
            Text("\(coordinate.latitude)")
            Text("\(coordinate.longitude)")
        }
    }
}

struct CooView_Previews: PreviewProvider {
    static var previews: some View {
        CooView()
    }
}
