//
//  SearchPlaceRequest.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

struct SearchPlaceRequest: ApiRequest {
  let parameters: SearchPlaceParameters
  
  var urlRequest: URLRequest {
    let url: URL! = URL(string: "")
    var request = URLRequest(url: url)
    
    request.httpMethod = "GET"
    //    request.httpBody = parameters.toJsonData()
    
    return request
  }
  
}
