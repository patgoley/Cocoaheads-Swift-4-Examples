//
//  ProtocolEnhancements.swift
//  Swift4Examples
//
//  Created by Patrick Goley on 6/27/17.
//  Copyright © 2017 Patrick Goley. All rights reserved.
//

import UIKit


struct Song {
    
    let name: String
    let duration: TimeInterval
}

protocol Playlist: Sequence where Element == Song {
    
    
}

typealias TableViewController = UIViewController & UITableViewDelegate & UITableViewDataSource
