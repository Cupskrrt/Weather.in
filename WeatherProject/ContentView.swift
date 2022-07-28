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
        Section{
            VStack{
                //Weather
                Spacer()
                WeatherView()
                Spacer()
                //News
                NewsView()
                    .frame(width: 380, height: 190, alignment: .center)
                Spacer()
                //Recent Earthquake Text
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.secondary)
                Text("Recent Earthquake")
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.secondary)
                
                //Recent Earthquake Form
                GempaView()
                    .frame(width: 380, height: 200)
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
