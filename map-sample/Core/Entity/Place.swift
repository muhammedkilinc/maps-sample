//
//  Place.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

struct Place: Codable {
  let address: String?
  let name: String?
  let rating: Double?
  let geometry: PlaceGeometry?
  let types: [String]?
  
  enum CodingKeys: String, CodingKey {
    case address = "formatted_address"
    case name
    case rating
    case geometry
    case types
  }
}
