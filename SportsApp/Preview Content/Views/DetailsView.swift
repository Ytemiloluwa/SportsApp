//
//  DetailsView.swift
//  SportsApp
//
//  Created by Temiloluwa on 18/09/2022.
//

import SwiftUI

struct DetailsView: View {
    
    let sportData: Sport
    @EnvironmentObject private var selectedSport: SelectedSport
    
    var body: some View {
        
        VStack {
            
            Image(sportData.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .edgesIgnoringSafeArea(.top)
            
            ExtractedView()
            
            PickerView()
            
        }.edgesIgnoringSafeArea(.top)
    }
  
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView(sports: <#Sport#>)
//    }
//}

struct ExtractedView: View {
    var body: some View {
        
        HStack {
            
            Text("Activity")
                .foregroundColor(.black)
                .font(.system(size: 24, weight: Font.Weight.medium, design: Font.Design.default))
            
            Spacer()
            
            NavigationLink(destination: CardioView()) {
                
                Text("More")
                    .foregroundColor(Color.white)
                    .padding(11)
                    .background(Color.black)
                    .clipShape(Capsule())
            }
            
        }.padding(10)
        
    }
}
