//
//  PlaceListModels.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum PlaceList
{
  // MARK: Use cases
  
  enum FetchPlaces
  {
    struct Request
    {
      let query: String
    }
    
    struct Response
    {
      let places: [Place]
    }
    
    struct ViewModel
    {
      let places: [Place]
    }
  }
}
