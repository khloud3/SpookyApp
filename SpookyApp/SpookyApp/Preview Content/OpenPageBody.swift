//
//  OpenPageBody.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct OpenPageBody: View {
    var body: some View {
        VStack {
            ZStack{
                
                RoundedRectangle(cornerRadius: 20 )
                    .fill(Color("Color1"))
                    .ignoresSafeArea()
                    .frame(width: 500 ,height: 1000)
                    .ignoresSafeArea()
              
                VStack(spacing: 230){
                    
                    Image("Top")
                        .resizable()
                        .frame(width: 500 ,height: 220)
                    VStack(spacing: 20){
                        Text("Spooky")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 45))
                        
//                        Text(" Event & Car pooling")
//                            .foregroundColor(.white)
                    }
                    Image("Button")
                        .resizable()
                        .frame(width: 500 ,height: 220)
                       
                    
                }
               
                
            }
            
            
            
        }
    }
}

struct OpenPageBody_Previews: PreviewProvider {
    static var previews: some View {
        OpenPageBody()
    }
}
