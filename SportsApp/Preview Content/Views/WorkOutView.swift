//
//  WorkOutView.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct WorkOutView: View {
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                Spacer(minLength: 10)
                    .frame(width: geometry.size.width, height: 10)
                
                self.WorkOutCharts()
                    .padding(.top, 50 * 10)
                
            }
        }
    }
    
    func WorkOutCharts() -> some View {
        // WorkOut Chart
        BarChartView(
            title: "Workout",
            progress: "19",
            goal: "35",
            total: "1H 42M",
            average: "11",
            unit: "MIN",
            data: ActivityData.exerciseChartData,
            textColor: Color.exerciseTextColor,
            barStartColor: Color.exerciseBarStartColor,
            barEndColor: Color.exerciseBarEndColor
        )
        .padding([.bottom], 25)
    }
}


struct WorkOutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkOutView()
    }
}

