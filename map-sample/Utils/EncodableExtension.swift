//
//  EncodableExtension.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

extension Encodable {
  
  func toDictionary() throws -> [String: Any] {
    let data = try JSONEncoder().encode(self)
    guard let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
      throw NSError()
    }
    return dictionary
  }
  
}
