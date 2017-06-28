//
//  ConstrainedInheritance.swift
//  Swift4Examples
//
//  Created by Patrick Goley on 6/27/17.
//  Copyright © 2017 Patrick Goley. All rights reserved.
//

import Foundation



struct Song {
    
    let name: String
    let duration: TimeInterval
}

protocol Playlist: Sequence where Element == Song {
    
    
}


struct Album: Playlist {
    
    typealias Element = Song
    
    typealias Iterator = Array<Song>.Iterator
    
    let songs: [Song]
    
    func makeIterator() -> IndexingIterator<Array<Song>> {
        
        return songs.makeIterator()
    }
}
