//
//  BaseTableViewController.swift
//  map-sample
//
//  Created by inomera on 13.11.2020.
//

import UIKit

protocol BaseTableViewController: class {
  var tableView: UITableView! { get }
  associatedtype TableViewDataSource: ViewDataSource
  var dataSource: TableViewDataSource! { get set }
}

extension BaseTableViewController {
  func show(items: [TableViewDataSource.ItemType]) {
    dataSource.items = items
    tableView.reloadData()
  }
}
