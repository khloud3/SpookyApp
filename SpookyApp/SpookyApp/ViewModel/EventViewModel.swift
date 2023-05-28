//
//  EventViewModel.swift
//  SpookyApp
//
//  Created by khloud on 06/11/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

class EventViewModel :ObservableObject{
    
    @Published var events :[Event]
    
    @Published var mapLocation : Event{
        didSet{
            updatMapRegion(event: mapLocation)
        }
    }
    
    @Published var mapRegion : MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    @Published var showEventList : Bool = false
    @Published var sheetLocation : Event? = nil
    init (){
        let events = EventDataService.events
        self.events = events
        self .mapLocation = events.first!
        
        
        self .updatMapRegion(event: events.first!)
    }
    private func updatMapRegion (event :Event){
        withAnimation(.easeOut){
            mapRegion = MKCoordinateRegion(
                center: event.coordinates,
                span: mapSpan)
        }
    }
    
    func toggleLocationList(){
        withAnimation(.easeInOut){
            showEventList = !showEventList
        }
    }
    func showNextEvent(event : Event){
        withAnimation(.easeInOut){
            mapLocation = event
            showEventList = false
        }
    }
    
}
