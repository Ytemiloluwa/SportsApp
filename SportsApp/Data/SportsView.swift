//
//  SelectedSports.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct SportsView: View {
    
    let columns = [GridItem(.adaptive(minimum: 180))]
    let sportData: Sport
    @EnvironmentObject private var selectedSport: SelectedSport
    
    private let data: [Sport] =
    [Sport(image: "Gym", name: "Fitness")
                       ,Sport(image: "Exercise", name: "Exercise"),Sport(image: "Yoga", name: "Yoga"),Sport(image: "Athletics", name: "Athletics"),Sport(image: "Tennis", name: "Tennis"),Sport(image: "baseball", name: "Baseball"), Sport(image: "basketball", name: "Basketball"), Sport(image: "Fitness", name: "Gym")]

    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 10) {

                    ForEach(self.data) { sport in
                        
                        NavigationLink(destination: DetailsView(sportData: sportData)) {
                        
                            VStack {
                                
                                Image(sport.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                
                                Text(sport.name)
                                    .font(.system(size: 20, weight: Font.Weight.medium, design: Font.Design.default))
                                    .foregroundColor(.blue)
                            }
                        }
                    }

                }
            }.navigationBarTitle("Sports")
                .navigationBarTitleDisplayMode(.automatic)
                
            
        }
    }
}
struct SportsView_Previews: PreviewProvider {
    static var previews: some View {
        SportsView(sportData: Sport.init(image: "Yoga", name: "Yoga"))
            .environmentObject(SelectedSport())
    }
}

