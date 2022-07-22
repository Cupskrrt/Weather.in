//
//  EarthquakeAPI.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import SwiftUI

struct earthquake: Codable, Identifiable {
    let id = UUID()
    var waktu_gempa: String
    var lintang: String
    var bujur: String
    var magnitudo: String
    var kedalaman: String
    var wilayah: String
}

class earthquakeApi{
    func getEarthquake(){
        guard let url = URL(string: "http://feriirawan-api.herokuapp.com/list/bmkg/") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let earthquake = try! JSONDecoder().decode([earthquake].self, from: data!)
            print(earthquake)
        }
        .resume()
    }
}
