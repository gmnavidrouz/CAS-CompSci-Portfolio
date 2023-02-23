//
//  IMDB Search.swift
//  BlockBuster App
//
//  Created by Navid Rouzroch on 1/31/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iMDBSearch = try? JSONDecoder().decode(IMDBSearch.self, from: jsonData)

import Foundation

// MARK: - IMDBSearch
struct IMDBSearch: Codable {
    let searchType, expression: String
    let results: [Movie]
    let errorMessage: String
}

// MARK: - Result
struct Movie: Codable {
    let id, resultType: String
    let image: String
    let title, description: String
}
