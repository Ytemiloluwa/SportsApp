//
//  LoginScreen.swift
//  SportsApp
//
//  Created by Temiloluwa on 17/09/2022.
//

import Foundation
import SwiftUI

struct LoginScreen: View {
    
    var body: some View {
        
        ZStack {
            
            Image("Fitness")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                
                Text("Sport+")
                    .font(.system(size: 30, weight: Font.Weight.bold, design: Font.Design.default))
                    .foregroundColor(.white)

                Spacer()
                
                SigninWithApple()
                    .frame(width: 100, height: 40, alignment: .center)
                
                
            }.padding(.vertical, 30)
        }
        
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

