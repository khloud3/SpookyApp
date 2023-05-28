//
//  PeronsList.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import Foundation

struct PeronsList : Identifiable{
 var id = UUID()
    var Personimage : String
    var PersonName : String
}

var persons = [ PeronsList(Personimage: "image1", PersonName: "Ollie Rodriques"),
PeronsList(Personimage: "image2", PersonName: "Jane Ropberson"),
 PeronsList(Personimage: "image3", PersonName: "Leah Barnet"),
 PeronsList(Personimage: "image4", PersonName: "Martha Bowres"),
 PeronsList(Personimage: "image5", PersonName: "Frid White")]


