//
//  Strings.swift
//  Swift4Examples
//
//  Created by Patrick Goley on 6/27/17.
//  Copyright © 2017 Patrick Goley. All rights reserved.
//

import Foundation


let longString = """

    Hello, "World"

    more text down here

"""


let reverse = longString.reversed()


func enumerateString() {
    
    for char in longString {
        
        print(char)
    }
}
