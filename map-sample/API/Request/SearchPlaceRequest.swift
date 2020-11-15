//
//  SearchPlaceRequest.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

struct SearchPlaceRequest: ApiRequest {
  
  let parameters: SearchPlaceParameters
  
  var param: Parameters? {
    return try? parameters.toDictionary()
  }
  
  var httpMethod: HTTPMethod {
      get { return .get }
  }
  
  var endpoint: String {
      get { return Constants.APIEndPoint.Place }
  }
  
  var parameterEncoding: ParameterEncoding {
    get { return .urlEncoding }
  }
  
}
