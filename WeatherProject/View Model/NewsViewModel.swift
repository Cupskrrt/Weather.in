//
//  NewsViewModel.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 28/07/22.
//

import Foundation

class NewsViewModel: ObservableObject{
    
    @Published var news = [Articles]()
    
    init(){
        Misc().getData(urlString: "https://newsapi.org/v2/top-headlines?q=climate&apiKey=d5ff6568abf041b8b1985129fe91eca9") {(newsResult: newsResponse?) in
            DispatchQueue.main.async {
                self.news = newsResult!.articles
            }
        }
    }
}
