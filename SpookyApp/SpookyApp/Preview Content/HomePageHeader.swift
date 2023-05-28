//
//  HomePageHeader.swift
//  SpookyApp
//
//  Created by khloud on 06/11/1444 AH.
//

import SwiftUI

struct HomePageHeader: View {
    var body: some View {
        NavigationStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20 )
                    .fill(Color("Color1"))
                
                    .frame(width: 390, height: 280)
                    .shadow(color:.secondary.opacity(0.9), radius:5, x: 0, y:5)
                HStack (spacing: 50){
                    Image("imageP")
                        .resizable()
                        .frame(width: 65 ,height: 50)
                    Text("Spooky")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .bold()
                        .padding(.leading ,20)
                   
                        Image(systemName: "message.badge")
                            .resizable()
                            .frame(width: 20 ,height: 20)
                            .foregroundColor(.white)
                    
                    Image(systemName: "bell")
                        .resizable()
                        .frame(width: 20 ,height: 20)
                        .foregroundColor(.white)
                        .padding(.leading ,-30)
                    
                }
                .padding(.top ,-80)
                
                Text("My You Like these Events")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.leading ,-150)
                    .padding(.bottom,-50)
                
            }
            .ignoresSafeArea()
        }
    }
        
}

struct HomePageHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomePageHeader()
    }
}
