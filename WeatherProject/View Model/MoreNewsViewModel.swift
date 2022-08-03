//
//  MoreNewsViewModel.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 03/08/22.
//

import Foundation

class MoreNewsViewModel: ObservableObject{
    @Published var news = [Articles]()
    
    init(){
        Misc().getData(urlString: "https://newsapi.org/v2/everything?q=climate&from=2022-07-03&sortBy=publishedAt&pageSize=15&apiKey=d5ff6568abf041b8b1985129fe91eca9") {(newsResult: newsResponse?) in
            DispatchQueue.main.async {
                self.news = newsResult!.articles
            }
        }
    }
}
