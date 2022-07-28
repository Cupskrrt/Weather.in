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
        ScrollView(.vertical){
            HStack{
                WebImage(url: URL(string: NVM.urlToImage))
                    .resizable()
                    .frame(width: 120, height: 120)
                VStack(alignment: .leading, spacing: 6){
                    Text(NVM.publishedAt)
                        .font(.caption2)
                    Text(NVM.title)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
