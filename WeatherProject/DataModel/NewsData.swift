//
//  NewsData.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 28/07/22.
//

import Foundation
struct newsResponse: Codable{
    let articles: [Articles]
}

struct Articles: Codable, Identifiable{
    let id = UUID()
    
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
    let source: Source
}

struct Source: Codable{
    let name: String?
}
