//
//  Model.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation

struct Sport: Identifiable, Equatable, Hashable{
    
    let id = UUID()
    var image: String
    var name: String
    // var description: String
}
