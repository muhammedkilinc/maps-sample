//
//  UITableViewExtension.swift
//  map-sample
//
//  Created by inomera on 13.11.2020.
//

import UIKit

extension UITableView {
            
  func register<T>(type: T.Type) where T: UITableViewCell {
    let identifier = String(describing: type)
    register(UINib(nibName: identifier, bundle: Bundle.main), forCellReuseIdentifier: identifier)
  }
  
}
