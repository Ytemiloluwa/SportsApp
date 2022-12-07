//
//  Model.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation

struct SportItem: Identifiable, Equatable {
    
    var id : String { image }
    var image = ""
    var name = ""
    // var description: String
    

    static var placeholder: SportItem {

        SportItem(image: "Gym", name: "Fitness")
    }
    
    static var allSports: [SportItem]{
        
        [SportItem(image: "Gym", name: "Fitness")
                           ,SportItem(image: "Exercise", name: "Exercise"),SportItem(image: "Yoga", name: "Yoga"),SportItem(image: "Athletics", name: "Athletics"),SportItem(image: "Tennis", name: "Tennis"),SportItem(image: "baseball", name: "Baseball"), SportItem(image: "basketball", name: "Basketball"), SportItem(image: "Fitness", name: "Gym")]
    }
}
