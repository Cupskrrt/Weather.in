//
//  ShakeMapView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 01/08/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct ShakeMapView: View {
    
    @StateObject var GVM = GempaViewModel()
    
    var body: some View {
        ScrollView{
            WebImage(url: URL(string: "\(GVM.shakemap)"))
                .resizable()
                .frame(width: 420, height: 420)
        }
    }
}

struct ShakeMapView_Previews: PreviewProvider {
    static var previews: some View {
        ShakeMapView()
    }
}
