//
//  PlaceGeometry.swift
//  map-sample
//
//  Created by inomera on 15.11.2020.
//

import Foundation

struct PlaceGeometry: Codable {
  let location: PlaceLocation?
}

struct PlaceLocation: Codable {
  let latitude: Double?
  let longitude: Double?
  
  enum CodingKeys: String, CodingKey {
    case latitude = "lat"
    case longitude = "lng"
  }
}
