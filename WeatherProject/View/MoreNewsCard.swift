//
//  MoreNewsCard.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 03/08/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct MoreNewsCard: View {
    
    @StateObject var MNVM = MoreNewsViewModel()
    
    var body: some View {
        ForEach(MNVM.news) { article in
            Link(destination: URL(string: article.url ?? "No URL")!) {
                HStack{
                    WebImage(url: URL(string: article.urlToImage ?? "No Photos"))
                        .resizable()
                        .frame(width: 120, height: 90, alignment: .leading)
                        .cornerRadius(15)
                    VStack(alignment: .leading){
                        Text(article.title ?? "No Title")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.primary)
                            .multilineTextAlignment(.leading)
                        Text(article.publishedAt ?? "No Date")
                            .font(.subheadline)
                            .foregroundColor(.primary)
                        HStack(){
                            VStack(alignment:.leading){
                                Text(article.source.name ?? "No Source")
                                    .font(.footnote)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .frame(width: 230, height:100)
                }
                .frame(width: 380, height: 120)
                .background(.thinMaterial)
                .cornerRadius(15)
            }
        }
        
    }
}

struct MoreNewsCard_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
