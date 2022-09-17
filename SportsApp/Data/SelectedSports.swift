//
//  SelectedSports.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct selectedsports: View {
    
     let columns = [GridItem(.adaptive(minimum: 180))]
    
    @State private var images = [Sport(images: "Gym", name: "Gym")
                                 ,Sport(images: "Exercise", name: "Exercise"), Sport(images: "Football", name: "Football"),Sport(images: "Yoga", name: "Yoga"),Sport(images: "Athletics", name: "Athletics"),Sport(images: "Tennis", name: "Tennis"),Sport(images: "baseball", name: "Baseball"), Sport(images: "basketball", name: "Basketball"), Sport(images: "Fitness", name: "Fitness")]

    var body: some View {
        
        VStack {
            
            HStack(spacing: 65){
            
                Image(systemName: "text.justify")
                    .font(.title2)
                    .padding()
                
                Text("Sports")
                    .font(.system(size: 30, weight: Font.Weight.bold, design: Font.Design.default))
                    .foregroundColor(.black)
                    .padding(.leading, 30)
                 
                Spacer()
            }
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 10) {
                    
                    ForEach(images, id: \.self) { i in
                        
                        
                        Button {
                            
                            //
                        } label: {
                            VStack {
                                
                                Image(i.images)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                
                                Text(i.name)
                                    .font(.system(size: 20, weight: Font.Weight.medium, design: Font.Design.default))
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    
                }
                
            }
        }
    }
}
struct selectedsports_Previews: PreviewProvider {
    static var previews: some View {
        selectedsports()
    }
}
