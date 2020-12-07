//
//  Result.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

typealias Result<T> = Swift.Result<T, Error>

enum APIError: Error, Equatable {
  case network, url, parseObject, parseJSON, general, encode

  var description: String {
    switch self {
    case .network:
      return NSLocalizedString("Network Error", comment: "network_error")
    case .parseObject:
      return NSLocalizedString("Parse Object Error", comment: "parse_object_error")
    case .parseJSON:
      return NSLocalizedString("Parse JSON Error", comment: "parse_json_error")
    case .url:
      return NSLocalizedString("Url Error", comment: "url_error")
    default:
      return "Error"
    }
  }
}
