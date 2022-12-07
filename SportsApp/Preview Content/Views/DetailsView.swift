//
//  DetailsView.swift
//  SportsApp
//
//  Created by Temiloluwa on 18/09/2022.
//

import SwiftUI

struct DetailsView: View {
    
    @State var sportData: SportItem = SportItem.init()
    //    var destination: Destination
    //
    //    init(sportData: SportItem, @ViewBuilder destination: (() -> Destination)) {
    //
    //        self.sportData = sportData
    //        self.destination = destination()
    //    }
    var body: some View {
        
        VStack{
            
            
            Image(sportData.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            ExtractedView()
            
            PickerView()
            
            
        }
        .edgesIgnoringSafeArea(.top)
    }
    
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView(sportData: SportItem.placeholder, destination: {
//
//             Text("Hello World")
//        })
//    }
//}

struct ExtractedView: View {
    var body: some View {
        
        HStack {
            
            Text("Activity")
                .foregroundColor(.black)
                .font(.system(size: 24, weight: Font.Weight.medium, design: Font.Design.default))
            
            Spacer()
            
            
            Text("More")
                .foregroundColor(Color.white)
                .padding(11)
                .background(Color.black)
                .clipShape(Capsule())
            
            
        }.padding(10)
        
    }
}
