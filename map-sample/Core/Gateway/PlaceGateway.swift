//
//  PlaceGateway.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

typealias FetchPlacesEntityGatewayCompletionHandler = (_ places: Result<[Place]>) -> Void

protocol PlacesGateway {
  func fetchPlaces(parameters: SearchPlaceParameters, completionHandler: @escaping FetchPlacesEntityGatewayCompletionHandler)
}
