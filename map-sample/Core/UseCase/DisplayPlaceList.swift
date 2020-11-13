//
//  DisplayPlaceList.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

// However it might make sense for each layer do define it's own input parameters so it can be used independently of the other layers.
struct SearchPlaceParameters: Encodable {
  let input: String
  let inputType: String = "textquery"
  let fields: String = "formatted_address,name,rating,opening_hours,geometry"
  let key: String = "AIzaSyD1aj8-8R0efpLNLqMJBnseg_DHCsoo1Ow"
  
  enum CodingKeys: String, CodingKey {
    case inputType = "inputtype"
    case fields
    case key
    case input
  }
}


typealias DisplayPlacesUseCaseCompletionHandler = (_ places: Result<[Place]>) -> Void

protocol DisplayPlacesUseCase {
  func displayPlaces(parameters: SearchPlaceParameters, completionHandler: @escaping DisplayPlacesUseCaseCompletionHandler)
}

class DisplayPlacesListUseCaseImplementation: DisplayPlacesUseCase {
  let placesGateway: PlacesGateway
  
  init(placesGateway: PlacesGateway) {
    self.placesGateway = placesGateway
  }
  
  // MARK: - DisplayPlacesUseCase
  
  func displayPlaces(parameters: SearchPlaceParameters, completionHandler: @escaping (Result<[Place]>) -> Void) {
    self.placesGateway.fetchPlaces(parameters: parameters) { (result) in
      // Do any additional processing & after that call the completion handler
      completionHandler(result)
    }
  }
}
