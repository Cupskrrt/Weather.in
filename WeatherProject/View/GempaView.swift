//
//  GempaView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 27/07/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct GempaView: View {
    
    @StateObject var GVM = GempaViewModel()
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    VStack(alignment: .leading, spacing: 5){
                        Text(GVM.tanggal)
                            .font(.caption)
                        Text(GVM.jam)
                            .font(.caption)
                    }
                    VStack(alignment: .trailing, spacing: 5){
                        Text("Magnitude: \(GVM.magnitude)")
                            .font(.caption)
                        Text("Kedalaman: \(GVM.kedalaman)")
                            .font(.caption)
                    
                    }
                }
                WebImage(url: URL(string: "\(GVM.shakemap)"))
                    .resizable()
                    .frame(width: 380, height: 280 )
                HStack{
                    Text(GVM.wilayah)
                        .font(.caption)
                    Text(GVM.dirasakan)
                        .font(.caption)
                }
            }
        }
    }
}

struct GempaView_Previews: PreviewProvider {
    static var previews: some View {
        GempaView()
    }
}
