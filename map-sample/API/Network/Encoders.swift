//
//  Encoders.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

protocol ParameterEncoder {
  func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

enum ParameterEncoding {
  
  case urlEncoding
  case jsonEncoding
  
  func encode(urlRequest: inout URLRequest, params: Parameters?) throws {
    do {
      switch self {
      case .urlEncoding:
        guard let params = params else { return }
        
        try URLParameterEncoder().encode(urlRequest: &urlRequest, with: params)
      case .jsonEncoding:
        guard let params = params else { return }
        
        try JSONParameterEncoder().encode(urlRequest: &urlRequest, with: params)
      }
    } catch {
      throw error
    }
  }
}
struct URLParameterEncoder: ParameterEncoder {
  func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
    
    guard let url = urlRequest.url else { throw APIError.url }
    
    if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false), !parameters.isEmpty {
      
      urlComponents.queryItems = parameters.map { (element) -> URLQueryItem in
        return URLQueryItem(name: element.key, value: (element.value as AnyObject).addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
      }
      
      urlRequest.url = urlComponents.url
    }
    
    urlRequest.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
  }
}


struct JSONParameterEncoder: ParameterEncoder {
  func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
    do {
      let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
      urlRequest.httpBody = jsonAsData
      urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
    } catch {
      throw APIError.encode
    }
  }
}

