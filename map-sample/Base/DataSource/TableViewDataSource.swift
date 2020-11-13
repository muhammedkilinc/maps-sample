//
//  TableViewDataSource.swift
//  map-sample
//
//  Created by inomera on 13.11.2020.
//

import UIKit

class TableViewDataSource<T>: NSObject, UITableViewDataSource, ViewDataSource {
  var items = [T]()
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: identifierAt(indexPath), for: indexPath)
    let item = self.item(at: indexPath)
    bind(cell, item)
    
//    let cell = tableView.dequeueReusableCell(withIdentifier: V.identifier, for: indexPath)
//    (cell as! V).configure(forItem: item)
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func identifierAt(_ indextPath: IndexPath) -> String {
    return ""
  }
  
  func bind(_ cell: UITableViewCell, _ item: T) {
    // override this
  }
}
