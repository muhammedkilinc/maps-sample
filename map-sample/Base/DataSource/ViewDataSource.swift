//
//  ViewDataSource.swift
//  map-sample
//
//  Created by inomera on 13.11.2020.
//

import Foundation

protocol ViewDataSource {
  associatedtype ItemType
  
  var items: [ItemType] { get set }
}

extension ViewDataSource {
  func item(at indexPath: IndexPath) -> ItemType {
    return items[indexPath.item]
  }
}
