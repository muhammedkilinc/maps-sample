//
//  Constants.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

struct Constants {
  
  // APPLICATION
  struct App {
    
    // Base
    static let BaseURL: String = "https://maps.googleapis.com"
    static let APIKey: String = "AIzaSyD1aj8-8R0efpLNLqMJBnseg_DHCsoo1Ow"

    struct Request {
      static let GooglePlacesKey = "key"
    }
    
    struct ScreenTitle {
      static let placeList = "Search Place"
    }
  }
  
  struct APIEndPoint {
      static let Place = "/maps/api/place/findplacefromtext/json"
  }
  
}
