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
        NavigationView{
            ScrollView{
                ForEach (NVM.news) {news in
                    NavigationLink{
                        NewsDetailView()
                    } label: {
                        LazyHStack(){
                            WebImage(url: URL(string: news.urlToImage ?? "No Photo"))
                                .resizable()
                                .frame(width: 120 , height: 80, alignment: .leading)
                                .ignoresSafeArea(.all)
                            VStack(alignment: .leading, spacing: 5){
                                Text(news.title ?? "No Title")
                                    .frame(width: 250, height: 50)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text(news.publishedAt ?? "No Date")
                                    .font(.footnote)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .listStyle(GroupedListStyle())
            }
            .navigationBarHidden(true)
        }
        
    }
    
}


struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
