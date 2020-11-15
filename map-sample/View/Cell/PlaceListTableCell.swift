//
//  PlaceListTableCell.swift
//  map-sample
//
//  Created by inomera on 13.11.2020.
//

import UIKit

class PlaceListTableCell: UITableViewCell, ViewCell {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var addressLabel: UILabel!
  @IBOutlet weak var ratingLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  func configure(forItem item: Place) {
    nameLabel.text = item.name
    addressLabel.text = item.address
    if let rating = item.rating {
      ratingLabel.text = "\(rating)"
    } else {
      ratingLabel.text = nil
    }
  }
  
}
