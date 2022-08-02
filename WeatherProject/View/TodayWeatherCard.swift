//
//  TodayWeatherCard.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 02/08/22.
//

import SwiftUI

struct TodayWeatherCard: View {
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Wind")
                Text("SE 1 Km/Hr")
                Text("Humidty: 90%")
            }
            .padding()
            VStack{
                Text("27C")
                Text("Jakarta")
                Text("Mostly Cloudy")
            }
            VStack{
                Text("22.00")
                Image(systemName: "cloud")
                    .resizable()
                    .frame(width: 30, height: 40)
            }
            .padding()
            
        }
        .background(.thinMaterial)
        .cornerRadius(20)
    }
}

struct TodayWeatherCard_Previews: PreviewProvider {
    static var previews: some View {
        TodayWeatherCard()
    }
}
