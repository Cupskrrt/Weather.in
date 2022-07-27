//
//  GempaData.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 27/07/22.
//

import Foundation

public struct gempaResponse: Codable {
    public struct Data: Codable{
        public var tanggal: String?
        public let jam: String?
        public let magnitude: String?
        public let kedalaman: String?
        public let wilayah: String?
        public let dirasakan: String?
        public let shakemap: String?
    }
    
    public let data: Data
}
