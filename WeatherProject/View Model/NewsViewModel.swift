//
//  NewsViewModel.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 28/07/22.
//

import Foundation

class NewsViewModel: ObservableObject{
    @Published var name: String = ""
    @Published var author: String = ""
    @Published var title: String = ""
    @Published var description: String = ""
    @Published var url: String = ""
    @Published var urlToImage: String = ""
    @Published var publishedAt: String = ""
    @Published var content: String = ""
    
    init(){
        Misc().getData(urlString: "https://newsapi.org/v2/top-headlines?q=climate&apiKey=d5ff6568abf041b8b1985129fe91eca9") { (newsResult: newsResponse?) in
            if let newsResult = newsResult {
                self.name = newsResult.articles.first?.source.name ?? "No Source"
                self.author = newsResult.articles.first?.author ?? "No Author"
                self.title = newsResult.articles.first?.title ?? "No Title"
                self.description = newsResult.articles.first?.description ?? "No Desc"
                self.url = newsResult.articles.first?.description ?? "No URL"
                self.urlToImage = newsResult.articles.first?.urlToImage ?? "No URL to image"
                self.publishedAt = newsResult.articles.first?.publishedAt ?? "No date & timeb"
                self.content = newsResult.articles.first?.content ?? "No Content"
            }
        }
    }
}
