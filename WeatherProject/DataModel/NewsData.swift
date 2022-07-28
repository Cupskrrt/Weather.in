//
//  NewsData.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 28/07/22.
//

import Foundation

public struct newsResponse: Codable{
    public struct Articles: Codable{
        public struct Source: Codable{
            public let name: String?
        }
        public let source: Source
        public let author: String?
        public let title: String?
        public let description: String?
        public let url: String?
        public let urlToImage: String?
        public let publishedAt: String?
        public let content: String?
    }
    
    public let articles: [Articles]
}
