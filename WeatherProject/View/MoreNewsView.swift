//
//  MoreNewsView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 03/08/22.
//

import SwiftUI

struct MoreNewsView: View {
    
    @StateObject var MNVM = MoreNewsViewModel()
    
    var body: some View {
        ScrollView{
            MoreNewsCard()
        }
    }
}

struct MoreNewsView_Previews: PreviewProvider {
    static var previews: some View {
        MoreNewsView()
    }
}
