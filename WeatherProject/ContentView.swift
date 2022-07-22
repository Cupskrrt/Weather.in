//
//  ContentView.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 22/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Section{
            VStack{
                HStack{
                    VStack{
                        Text("27C")
                            .font(.largeTitle)
                            .bold()
                        Text("Jakarta")
                            .font(.title)
                    }
                    Image(systemName: "moon")
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    
                }
                ScrollView(.horizontal){
                    Form{
                        Text("News nanti disini")
                    }
                    .padding(.all)
                    .frame(width: 414, height: 100, alignment: .center)
                    .scaledToFit()
                    
                }
                
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.black)
                
                Text("Recent Earthquake")
                
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.black)
                
                ScrollView{
                    Form{
                        Text("Buat Recent Earthquake")
                    }
                    .padding(.all)
                    .frame(width: 414, height: 200, alignment: .center)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

