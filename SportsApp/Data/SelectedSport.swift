//
//  SelectedSong.swift
//  SportsApp
//
//  Created by Temiloluwa on 18/09/2022.
//

import SwiftUI

class SelectedSport: ObservableObject {
    
    @Published
    var currentSport: SportItem?
    
    var sportwasSelected: Bool {
        
        currentSport != nil
    }
    
    func tapSport(sport: SportItem) {
        
        if currentSport == sport{
            
            currentSport = nil
        }else {
            
            currentSport = sport
        }
    }
    
    func SportSelected(_ sport: SportItem) -> Bool {
        
        sport == currentSport
    }
}
