//
//  ViewCell.swift
//  map-sample
//
//  Created by inomera on 13.11.2020.
//

import Foundation

protocol ViewCell {
  static var reuseIdentifier: String { get }
  static var identifier: String { get }
  
  associatedtype ItemType
  func configure(forItem item: ItemType)
}

extension ViewCell {
  static var reuseIdentifier: String { return String(describing: Self.self)}
  static var identifier: String { return String(describing: Self.self)}
}
