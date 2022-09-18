//
//  ExerciseView.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct ExerciseView: View {
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                 Spacer(minLength: 0)
                    .frame(width: geometry.size.width, height: 10)
                    .padding(.top, 20)
                
                self.ExerciseCharts()
              .padding(.bottom, 50 * 10)
                
            }
            .padding(.bottom, 50)
        }
    }
    
    func ExerciseCharts() -> some View {
        
        // Exercise Chart
        BarChartView(
            title: "Excercise",
            progress: "15",
            goal: "25",
            total: "2 175 CAL",
            average: "56",
            unit: "THR",
            data: ActivityData.moveChartData,
            textColor: Color.moveTextColor,
            barStartColor: Color.moveBarStartColor,
            barEndColor: Color.moveBarEndColor
        )
     }
}
struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}


