//
//  WeatherView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct WeatherView: View {
    
    @StateObject var WVM = WeatherViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Text(WVM.temp)
                    .font(.system(size: 20))
                WebImage(url: URL(string: "http://openweathermap.org/img/wn/\(WVM.icon)@2x.png"))
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            Text(WVM.main)
            Text(WVM.description)
                .font(.subheadline)
            Text(WVM.name)
                .font(.title)
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

