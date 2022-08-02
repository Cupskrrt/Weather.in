//
//  NewsView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 23/07/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsView: View {
    
    @StateObject var NVM = NewsViewModel()
    
    var body: some View {
        ScrollView{
            ForEach (NVM.news) {news in
                Link(destination: URL(string: news.url!)!) {
                    LazyHStack(){
                        WebImage(url: URL(string: news.urlToImage ?? "No Photo"))
                            .resizable()
                            .frame(width: 120 , height: 80, alignment: .leading)
                            .ignoresSafeArea(.all)
                        VStack(alignment: .leading, spacing: 5){
                            Text(news.title ?? "No Title")
                                .frame(width: 250, height: 50, alignment: .leading)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Text(news.publishedAt ?? "No Date")
                                .font(.footnote)
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .listStyle(GroupedListStyle())
        
    }
    
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
