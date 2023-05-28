//
//  EventPreviewView.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct EventPreviewView: View {
    @EnvironmentObject private var vm : EventViewModel
    let event :Event
    var body: some View {
        HStack(alignment: .bottom ,spacing: 0){
            VStack ( alignment: .leading,spacing: 16){
                imageSection
                
                titleSection
            }
            VStack (spacing:8){
                learnMoreButton

            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y:65)
        )
        .cornerRadius(10)
    }
}

struct EventPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("Color2").ignoresSafeArea()
           EventPreviewView(event: EventDataService.events.first!)
                .padding()
        }
        
    }
}
extension EventPreviewView{
    private var imageSection : some View{
        ZStack{
            HStack{
                if let imageName = event.imageNames.first{
                    Image(imageName)
                        .resizable ()
                        .scaledToFit()
                        .frame (width: 100, height: 100)
                        .cornerRadius (10)
                }
            }
            .padding(6)
            .background(Color.secondary)
            .cornerRadius(10)
        }
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading ,spacing: 4){
            
            Text(event.title)
                .font(.title2)
                .bold()
            
            Text(event.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity ,alignment: .leading)
        
    }
    
    
    private var learnMoreButton : some View{
        
        Button{
            vm.sheetLocation = event
            
        } label: {
            Text("Learn More")
                .foregroundColor(.white)
                .font(.headline)
                .frame(width: 120 , height: 40)
                .background(Color("Color1"))
                .cornerRadius(10)
                .padding()
        }
//        .buttonStyle(.borderedProminent)
    }
}
