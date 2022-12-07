//
//  SelectedSports.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct SportsView<Destination: View>: View {
    
    let columns: [GridItem] = Array(repeating: .init(.adaptive(minimum: 180), spacing: 10), count: 2)
    var sportData: SportItem
    var destination: Destination
    
    init(sportData: SportItem, @ViewBuilder destination: (() -> Destination)) {
        
        self.sportData = sportData
        self.destination = destination()
    }
   
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: true) {
                
                LazyVGrid(columns: columns, alignment: .center, spacing: 10) {

                    ForEach(SportItem.allSports) { sport in
                        
                        NavigationLink(destination: destination){
                        
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
        SportsView(sportData: SportItem.init(), destination: {
            
            DetailsView(sportData: SportItem.init())
            
        })
         
    }
}

