//
//  Event1View.swift
//  SpookyApp
//
//  Created by khloud on 06/11/1444 AH.
//

import SwiftUI
import MapKit

struct Event1View: View {
    @EnvironmentObject private var vm : EventViewModel
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                mapLayer
                    .ignoresSafeArea()
                
                VStack(spacing: 0){
                    NavigationLink(destination: MessagePerson()){
                        header
                    }
                    
                    Spacer()
                    
                    locationPreviewStack
                }
                
            }
            .sheet(item: $vm.sheetLocation,onDismiss: nil ) { event in
                EventDetailView(event:event)
            }
        }
    }
}

struct Event1View_Previews: PreviewProvider {
    static var previews: some View {
        Event1View()
            .environmentObject(EventViewModel())
        
    }
}
    
    
extension Event1View{
    private var header : some View{
        VStack {
            
            ZStack{
                
                HomePageHeader()
                VStack{
                    Button(action: vm.toggleLocationList){
                        Text( vm.mapLocation.title + ",  " + vm.mapLocation.cityName )
                            .font(.subheadline)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .frame (height: 55)
                            .frame(maxWidth: .infinity)
                            .animation(.none, value: vm.mapLocation)
                            .overlay (alignment: .leading) {
                                Image (systemName: "arrow.down" )
                                    .font (.headline)
                                    .foregroundColor (.primary)
                                    .padding ()
                                    .rotationEffect(Angle(degrees:
                                                            vm.showEventList ? 180 : 0))
                                
                            }
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .opacity(0.75)
                    .padding()
                    if vm.showEventList{
                        EventListView()
                    }
                }
            }
            
           
          
        }
        
    }
    private var mapLayer : some View{
        
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.events,
            annotationContent: {event in
            MapAnnotation(coordinate: event.coordinates){
                EventMapAnnotationView()
                    .scaleEffect(vm.mapLocation == event ? 1 :0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextEvent(event: event)
                    }
                
            }
            //                MapMarker(coordinate: location.coordinates,tint:.blue)
            
        })
    }
    
    private var locationPreviewStack : some View{
        
        ZStack{
            ForEach(vm.events){ event in
                if vm.mapLocation == event{
                    EventPreviewView(event: event)
                        .shadow(color: Color.black .opacity(0.3), radius: 20)
                        .padding()
                        .transition(.asymmetric(
                            insertion:.move(edge:.trailing),
                            removal: .move(edge:.leading)))
                }
            }
        }
    }
}
