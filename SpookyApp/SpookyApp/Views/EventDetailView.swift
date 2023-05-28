//
//  EventDetailView.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI
import MapKit

struct EventDetailView: View {
    @EnvironmentObject private var vm : EventViewModel
    let event :Event
    var body: some View {
        ScrollView{
            VStack{
                
                
                
                imageSection
                    .shadow(color: Color.black .opacity(0.3), radius: 20,x: 0,y: 10)
                
                VStack(alignment: .leading, spacing: 16){
                    titleSection
                    
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                    
                    
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton ,alignment: .topLeading)
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
       EventDetailView(event: EventDataService.events.first!)
            .environmentObject(EventViewModel())
    }
}
extension EventDetailView{
    private var imageSection :some View{
        TabView{
            ForEach(event.imageNames , id:\.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection : some View{
        VStack(alignment: .leading, spacing: 8){
            Text(event.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(event.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
            
        }
    }
    private var descriptionSection : some View{
        VStack(alignment: .leading, spacing: 8){
            Text(event.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text(event.description2)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
           
           
        }
    }
    private var mapLayer : some View{
        
        Map(coordinateRegion:.constant(MKCoordinateRegion(
            center: event.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [event]){ event in
            MapAnnotation (coordinate: event.coordinates) {
                EventMapAnnotationView()
                    .shadow(radius: 10)
            }
        }
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    private var backButton : some View{
        Button{
            vm.sheetLocation = nil
        }label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
    
}
