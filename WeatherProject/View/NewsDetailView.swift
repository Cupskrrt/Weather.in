//
//  NewsDetailView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 01/08/22.
//

import SwiftUI

struct NewsDetailView: View {
    
    @StateObject var NVM = NewsViewModel()
    
    var body: some View {
        Text("Help")
    }
}
struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView()
    }
}
