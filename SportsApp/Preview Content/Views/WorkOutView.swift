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
                 Spacer(minLength: 0)
                    .frame(width: geometry.size.width, height: 10)
                    .padding(.top, 20)
                
                self.WorkOutCharts()
              .padding(.bottom, 50 * 10)
                
            }
            .padding(.bottom, 50)
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
    }
}
struct WorkOutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkOutView()
    }
}

