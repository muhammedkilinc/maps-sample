//
//  Result.swift
//  map-sample
//
//  Created by inomera on 12.11.2020.
//

import Foundation

struct CoreError: Error {
    var localizedDescription: String {
        return message
    }
    
    var message = ""
}

typealias Result<T> = Swift.Result<T, Error>
