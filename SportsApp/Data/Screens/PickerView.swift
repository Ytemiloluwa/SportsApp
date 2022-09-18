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
    var body: some View {
        
        VStack {
            
            Picker(selection: $selected, label: Text("")){
            
                Text("Exercise").tag(0)
                Text("WorkOut").tag(1)
                Text("Cardio").tag(2)
            
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            
            if selected == 0 {
                
                CardioView()
            }
            
        }
        
    }
}
struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        
        PickerView()
    }
}
