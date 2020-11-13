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
  
  enum CodingKeys: String, CodingKey {
    case address = "formatted_address"
    case name
    case rating
  }
}
