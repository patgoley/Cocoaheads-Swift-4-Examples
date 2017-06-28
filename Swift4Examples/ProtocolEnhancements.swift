//
//  ProtocolEnhancements.swift
//  Swift4Examples
//
//  Created by Patrick Goley on 6/27/17.
//  Copyright © 2017 Patrick Goley. All rights reserved.
//

import UIKit


// Subclass and protocol conformance constraint

typealias TableViewController = UIViewController & UITableViewDelegate & UITableViewDataSource


// Constrained inheritance

protocol Playlist: Sequence where Element == Song {
    
    
}

struct Song {
    
    let name: String
    let duration: TimeInterval
}

struct Album: Playlist {
    
    typealias Iterator = Array<Song>.Iterator
    
    let songs: [Song]
    
    func makeIterator() -> IndexingIterator<Array<Song>> {
        
        return songs.makeIterator()
    }
}

struct RadioStation: Playlist {
    
    typealias Iterator = AnyIterator<Song>
    
    func makeIterator() -> AnyIterator<Song> {
        
        return AnyIterator { () -> Element? in
            
            return Song(name: "randomly chosen song", duration: 9000)
        }
    }
}
