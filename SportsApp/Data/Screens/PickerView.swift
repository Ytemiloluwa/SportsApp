//
//  PickerView.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct PickerView: View {
    
    @State private var selected = 0
    @State private var selectedsport: [String] = ["Exercise", "WorkOut", "Cardio"]
    
    var body: some View {
        
        Picker(selection: $selected, label: Text("Selectedsport")){
            
            ForEach(0..<selectedsport.count, id: \.self) {
                
                
                
                Text(selectedsport[$0]).tag($0)
                    .foregroundColor(.blue)
                
                
            }
            
        }.pickerStyle(SegmentedPickerStyle())
            .background(Color.white)
            .padding()
        
    }
    
}


struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        
        PickerView()
    }
}
