//
//  IMDB File.swift
//  BlockBuster App
//
//  Created by Navid Rouzroch on 1/31/23.
//

import Foundation


func loadData(searchTerm:String, completion: @escaping (IMDBSearch) -> Void){
    let urlEncodedSearchTerm = searchTerm.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
    
    let totalString = "https://imdb-api.com/en/API/SearchSeries/k_l731ylyy/" + urlEncodedSearchTerm
    let apiURL = URL(string: totalString)!
    let request = URLRequest(url: apiURL)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data else {
            print(String(describing: error))
            return
        }
        let movies = try! JSONDecoder().decode(IMDBSearch.self, from: data)
        print(movies)
        //print(String(data: data, encoding: .utf8)!)
        
        completion(movies)
    }
    
    task.resume()
    
    
}
