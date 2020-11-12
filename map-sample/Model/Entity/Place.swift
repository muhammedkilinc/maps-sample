//
//  Place.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

struct Place: Codable {
  let adress: String?
  let name: String?
  let rating: Int?
  
  enum CodingKeys: String, CodingKey {
    case adress = "formatted_address"
    case name
    case rating
  }
}
