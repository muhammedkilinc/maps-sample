//
//  APIRequest.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import UIKit

enum HTTPMethod: String {
  case get = "GET", post = "POST"
}

typealias Parameters = [String: Any]
typealias HeaderParameter = [String: String]
typealias JSONDictionary = [String: Any]


protocol ApiRequest {
  var urlRequest: URLRequest { get }
  var basePath: String { get }
  var endpoint: String { get }
  var httpMethod: HTTPMethod { get }
  var param: Parameters? { get }
  var addionalHeader: HeaderParameter? {get}
  var parameterEncoding: ParameterEncoding { get }
  var additionalParam: Parameters? { get }
}

extension ApiRequest {
  var urlRequest: URLRequest {
    return self.buildURLRequest()
  }
}

//
// MARK: - Default implementation
extension ApiRequest {
  
  // Base
  var basePath: String {
    get { return Constants.App.BaseURL }
  }
  
  
  // Param
  var param: Parameters? {
    get { return nil }
  }
  
  var additionalParam: Parameters? {
    get { return [Constants.App.Request.GooglePlacesKey: Constants.App.APIKey] }
  }
  
  
  // Additional Header
  var addionalHeader: HeaderParameter? {
    get { return nil }
  }
  
  
  // Default
  var defaultHeader: HeaderParameter {
    get { return ["Accept": "application/json"] }
  }
  
  
  // Path
  var urlPath: String {
    return basePath + endpoint
  }
  
  
  // URL
  var url: URL {
    return URL(string: urlPath)!
  }
  
  // Build URL Request
  func buildURLRequest() -> URLRequest {
    
    // Init
    var urlRequest = URLRequest(url: self.url)
    urlRequest.httpMethod = self.httpMethod.rawValue
    var parameters = param
    parameters?.merge(additionalParam ?? [:]) { (current, _) in current }

    // Encode param
    try? self.parameterEncoding.encode(urlRequest: &urlRequest, params: parameters)

    // Add addional Header if need
    if let additinalHeaders = self.addionalHeader {
      for (key, value) in additinalHeaders {
        urlRequest.addValue(value, forHTTPHeaderField: key)
      }
    }
    
    return urlRequest
  }
}
