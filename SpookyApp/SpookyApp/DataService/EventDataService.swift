//
//  EventDataService.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import Foundation
import MapKit

class EventDataService{

static let events: [Event] = [
    Event(
        title: "New Year Celebration",
        cityName: "Jeddah", coordinates: CLLocationCoordinate2D(latitude: 21.5960751, longitude: 39.1059463), description: "456 like | 300 Going", description2: "From luxury to hospitality and leisure, every day in Saudi Arabia is going to be unique and exciting when you are planning to spend a New Year's Eve in the country. Away from the chaos and hustle, the country brings you a perfect staycation holiday and more to make your eve special than ever."
        , imageNames:  [
        "Celebration1",
        "Celebration2",
        "Celebration3"]),
        Event(
            title: "Dribble Meetup",
            cityName: "Riyadh", coordinates: CLLocationCoordinate2D(latitude: 24.7135517, longitude: 46.6752957), description: "32k like | 4k Going", description2: "Lorem lpsum is simply dummy text of the printing and typesetting industy . Lorem ipsum has been the industry's standerd dummy text ever since the 1500s."
            , imageNames:  [
            "Metting1",
            "Metting2",
            "Metting3"])
            ]
    }
