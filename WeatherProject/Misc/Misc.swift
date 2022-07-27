//
//  Misc.swift
//  WeatherProject
//
//  Created by Luthfi Khan on 25/07/22.
//

import Foundation

class Misc: ObservableObject{
    
    func getData<T: Decodable>(urlString: String, completion: @escaping (T?) -> Void) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data , response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                return
            }
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            guard let decodedData = try? decoder.decode(T.self, from: data) else {
                completion(nil)
                return
            }
            
            completion(decodedData)
        }.resume()
    }
}

