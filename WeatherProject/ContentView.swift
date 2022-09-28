//
//  ContentView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 22/07/22.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                //Weather
                NavigationLink(){
                    TodayWeatherView()
                } label: {
                    WeatherView()
                }
                .foregroundColor(.primary)
                .padding(.bottom, 15)
                
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 10)
                //News
                NewsView()
                    .frame(width: 380, height: 220)
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                
                //Recent Earthquake Text
                Text("Recent Earthquake")
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.secondary)
                
                //Recent Earthquake Form
                GempaView()
                    .frame(width: 380, height: 300)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
