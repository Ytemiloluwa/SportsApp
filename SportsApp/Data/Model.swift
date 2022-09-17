//
//  Model.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation

struct Sport: Identifiable, Hashable {
    
    var id = UUID()
    var images: String
    var name: String
    // var description: String
}
