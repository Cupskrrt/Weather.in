//
//  GempaViewModel.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 27/07/22.
//

import Foundation

class GempaViewModel: ObservableObject {
    @Published var tanggal: String = ""
    @Published var jam: String = ""
    @Published var magnitude: String = ""
    @Published var kedalaman: String = ""
    @Published var wilayah: String = ""
    @Published var dirasakan: String = ""
    @Published var shakemap: String = ""
    
    
    init () {
        Misc().getData(urlString: "https://cuaca-gempa-rest-api.vercel.app/quake") { (gempaResult:gempaResponse?) in
            if let gempaResult = gempaResult {
                DispatchQueue.main.async {
                    self.tanggal = gempaResult.data.tanggal ?? ""
                    self.jam = gempaResult.data.jam ?? ""
                    self.magnitude = gempaResult.data.magnitude ?? ""
                    self.kedalaman = gempaResult.data.kedalaman ?? ""
                    self.wilayah = gempaResult.data.wilayah ?? ""
                    self.dirasakan = gempaResult.data.dirasakan ?? ""
                    self.shakemap = gempaResult.data.shakemap ?? ""
                }
                
            }
        }
    }
}
