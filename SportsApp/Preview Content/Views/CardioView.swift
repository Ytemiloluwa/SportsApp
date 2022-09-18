//
//  CardioView.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct CardioView: View {
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                 Spacer(minLength: 10)
                    .frame(width: geometry.size.width, height: 10)
                
                self.CardioCharts()
                .padding(.top, 50 * 10)
            }
        }
    }
    
    func CardioCharts() -> some View {
        
        // Cardio Charts
        BarChartView(title: "Cardio", progress: "29", goal: "14", total: "23M", average: "14", unit: "METs", data: ActivityData.moveChartData, textColor: Color.standTextColor, barStartColor: Color.standBarStartColor, barEndColor: Color.standBarEndColor)
            .padding([.bottom], 25)
     }
}
struct CardioView_Previews: PreviewProvider {
    static var previews: some View {
        CardioView()
    }
}

