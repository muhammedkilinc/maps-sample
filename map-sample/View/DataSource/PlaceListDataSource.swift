//
//  PlaceListDataSource.swift
//  map-sample
//
//  Created by inomera on 13.11.2020.
//

import UIKit

class PlaceListDataSource: TableViewDataSource<Place> {
 
  override func bind(_ cell: UITableViewCell, _ item: Place) {
    if let cell = cell as? PlaceListTableCell {
      cell.configure(forItem: item)
    }
  }
  override func identifierAt(_ indextPath: IndexPath) -> String {
    return String(describing: PlaceListTableCell.self)
  }

  
}
