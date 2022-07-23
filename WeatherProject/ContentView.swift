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
                WeatherView(viewModel: weatherViewModel(weatherApi: WeatherAPI()))
                    .padding(.top)
                    .frame(alignment: .center)
                CoorView()
                
                Spacer()
                //News
                NewsView()
                    .frame(width: 300, height: 150, alignment: .center)
                
                Spacer()
                //Recent Earthquake Text
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.black)
                Text("Recent Earthquake")
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.black)
                
                //Recent Earthquake Form
                RecentView()
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
