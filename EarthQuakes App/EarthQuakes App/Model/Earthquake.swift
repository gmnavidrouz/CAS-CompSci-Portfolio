//
//  Earthquake.swift
//  EarthQuakes App
//
//  Created by Navid Rouzroch on 1/11/23.
//

import Foundation


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let earthquakes = try? JSONDecoder().decode(Earthquakes.self, from: jsonData)

let sampleEarthquake = Earthquake(type: "type",
                                  properties: Properties(mag: 1.0, place: "Place", time: 111111, updated: 222222, url:"http://someplace.com", detail: "detail", type: "type", title: "title"), geometry: Geometry(type: "type", coordinates: [1.1,2.2]), id: "id")

// MARK: - Earthquakes
struct Earthquakes: Codable {
    let type: String
    let metadata: Metadata
    let features: [Earthquake]
    let bbox: [Double]
}

// MARK: - Feature
struct Earthquake: Codable {
    let type: String
    let properties: Properties
    let geometry: Geometry
    let id: String
}

// MARK: - Geometry
struct Geometry: Codable {
    let type: String
    let coordinates: [Double]
}

// MARK: - Properties
struct Properties: Codable {
    let mag: Double
    let place: String
    let time, updated: Int
    let url: String
    let detail: String
    let type, title: String
}

// MARK: - Metadata
struct Metadata: Codable {
    let generated: Int
    let url: String
    let title: String
    let status: Int
    let api: String
    let count: Int
}
