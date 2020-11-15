//
//  PlaceDetailInteractor.swift
//  map-sample
//
//  Created by inomera on 14.11.2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol PlaceDetailBusinessLogic
{
  func getPlaceDetail(request: PlaceDetail.GetPlace.Request)
}

protocol PlaceDetailDataStore
{
  var place: Place! { get set }
}

class PlaceDetailInteractor: PlaceDetailBusinessLogic, PlaceDetailDataStore
{
  var presenter: PlaceDetailPresentationLogic?
  var worker: PlaceDetailWorker?
  var place: Place!
  
  // MARK: Do something
  
  func getPlaceDetail(request: PlaceDetail.GetPlace.Request)
  {
    let response = PlaceDetail.GetPlace.Response(place: self.place)
    presenter?.presentPlaceDetail(response: response)
  }
}
