//
//  FilterDictionary.swift
//  Swift4Examples
//
//  Created by Patrick Goley on 6/28/17.
//  Copyright © 2017 Patrick Goley. All rights reserved.
//

import Foundation


let dict = [
    "rick": 1,
    "morty": -1
]

func testFilter() {
    
    let filtered = dict.filter { (entry) -> Bool in
        let (_, value) = entry
        return value > 0
    }
    
    assert(filtered == ["rick" : 1])
}
