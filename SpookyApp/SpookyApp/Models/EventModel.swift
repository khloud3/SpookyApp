//
//  EventModel.swift
//  SpookyApp
//
//  Created by khloud on 06/11/1444 AH.
//

import Foundation

import Foundation
import MapKit

struct Event : Identifiable ,Equatable{
   
    let title :String
    let cityName :String
    let coordinates : CLLocationCoordinate2D
    let description: String
    let description2: String
    let imageNames: [String]
    
    
    var id: String{
        title + cityName
}


static func == (lhs:Event , rhs :Event) ->  Bool {
    lhs.id == rhs.id
}
}


//struct Event:Identifiable{
//   var id = UUID()
//    var eventImage : String
//    var time : String
//    var titel : String
//    var description : String
//    var personImage : String
//
//}
