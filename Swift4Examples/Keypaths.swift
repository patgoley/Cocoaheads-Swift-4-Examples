//
//  Keypaths.swift
//  Swift4Examples
//
//  Created by Patrick Goley on 6/27/17.
//  Copyright © 2017 Patrick Goley. All rights reserved.
//

import UIKit


struct Person {
    
    var name: String
}

struct Company {
    
    var owner: Person
}

func testKeyPath() {
    
    let ownerNameKeyPath = \Company.owner.name
    
    var company = Company(owner: Person(name: "Alice"))
    
    let ownerName = company[keyPath: ownerNameKeyPath]
    
    company[keyPath: ownerNameKeyPath] = "Barbara"
    
    company.owner.name = "Barbara"
    
    print(ownerName)
}


func testKVO() {
    
    let navController = UINavigationController()
    
    let observer = navController.observe(\UINavigationController.viewControllers.count) { (navController, change) in
        
        print("view controller count: ", navController.viewControllers.count)
    }
    
    //observer unregistered automatically on deinit
}
