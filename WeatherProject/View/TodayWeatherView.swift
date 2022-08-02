//
//  TodayWeatherView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 01/08/22.
//

import SwiftUI

struct TodayWeatherView: View {
    
    @State var WVM = WeatherViewModel()
    
    var body: some View {
        Text("KNTL")
    }
}

struct MoreWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        TodayWeatherView()
    }
}
