//
//  WeatherView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var viewModel: weatherViewModel
    
    var body: some View {
        VStack{
            HStack{
                Text(viewModel.temprature)
                    .font(.system(size: 20))
                Image(systemName: viewModel.weatherIcon)
                    .font(.system(size: 18))
            }
            Text(viewModel.cityName)
                .font(.system(size: 27))
        }
        .onAppear(perform: viewModel.refresh)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(viewModel: weatherViewModel(weatherApi: WeatherAPI()))
    }
}

