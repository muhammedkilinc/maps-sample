//
//  APIPlaceGateway.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

protocol ApiPlacesGateway: PlacesGateway {
  
}

class ApiPlacesGatewayImplementation: ApiPlacesGateway {
  let apiClient: ApiClient
  
  init(apiClient: ApiClient) {
    self.apiClient = apiClient
  }
  
  // MARK: - ApiPlacesGateway
  
  func fetchPlaces(parameters: SearchPlaceParameters, completionHandler: @escaping (Result<[Place]>) -> Void) {
    let searchPlaceRequest = SearchPlaceRequest(parameters: parameters)
    apiClient.execute(request: searchPlaceRequest) { (result: Result<ApiResponse<APIPlaceCandidates>>) in
      switch result {
      case let .success(response):
        let places = response.entity.candidates
        completionHandler(.success(places))
      case let .failure(error):
        completionHandler(.failure(error))
      }
    }
  }
  
}
