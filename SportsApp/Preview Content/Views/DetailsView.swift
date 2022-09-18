//
//  DetailsView.swift
//  SportsApp
//
//  Created by Temiloluwa on 18/09/2022.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        ZStack {
            
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack(spacing: -14){
                    
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 21, height: 21)
                        .foregroundColor(.black)
                    
                    Spacer()
                    Text("Workout")
                        .foregroundColor(.black)
                        .font(.system(size: 23, weight: Font.Weight.medium, design: Font.Design.default))
                    
                    Spacer()
                    
                }.padding(.horizontal)
                    .padding(.vertical, 3)
                
                ZStack {
                    
                    Image("Exercise")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
                
                HStack {
                    
                    ExtractedView()
                }
                
                PickerView()
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            
            Text("Activity")
                .foregroundColor(.black)
                .font(.system(size: 24, weight: Font.Weight.medium, design: Font.Design.default))
            
            Spacer()
            
            Button {
                
                //
            } label: {
                Text("More")
                    .foregroundColor(Color.white)
                    .padding(11)
                    .background(Color.black)
                    .clipShape(Capsule())
                
            }
            
        }.padding(10)
    }
    
    
    //class Host: UIHostingController<ContentView> {
    //
    //
    //    override var preferredStatusBarStyle: UIStatusBarStyle {
    //
    //        return.lightContent
    //    }
    //
    //    override var prefersHomeIndicatorAutoHidden: Bool {
    //
    //        return true
    //    }
    //}
}
