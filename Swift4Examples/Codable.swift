//
//  Codable.swift
//  Swift4Examples
//
//  Created by Patrick Goley on 6/27/17.
//  Copyright © 2017 Patrick Goley. All rights reserved.
//

import Foundation


struct Address: Codable {
    
    let streetName: String
    let city: String
    let state: State
    let zip: Int
    
    enum CodingKeys: String, CodingKey {
        
        case streetName = "street_name", city, state, zip
    }
}

enum State: String, Codable {
    
    case tennessee
}

func serializeAddress() -> Data {
    
    let address = Address(
        streetName: "4th Ave N",
        city: "Nashville",
        state: .tennessee,
        zip: 37208
    )
    
    return try! JSONEncoder().encode(address)
}

func deserializeAddress() -> Address? {
    
    let jsonString = """
        {
          "street_name": "Nashville",
          "city": "4th Ave N",
          "state": "tennessee",
          "zip": 37208
        }
    """
    
    let jsonData = jsonString.data(using: .utf8)!
    
    return try? JSONDecoder().decode(Address.self, from: jsonData)
}

func serializeDictionary() -> Data {
    
    let dictionary = [
        "key": 123
    ]
    
    return try! JSONEncoder().encode(dictionary)
}
