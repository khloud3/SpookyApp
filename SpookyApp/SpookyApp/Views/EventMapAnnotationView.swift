//
//  EventMapAnnotationView.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct EventMapAnnotationView: View {
    let accentColor = Color ("Color1")
    var body: some View {
        VStack (spacing: 0) {
            Image (systemName: "map.circle.fill")
                .resizable ()
                .scaledToFit ()
                .frame (width: 30, height: 30)
                .font (.headline)
                .foregroundColor(.white)
                .padding (6)
                .background (accentColor)
                .cornerRadius (36)
            
            Image (systemName: "triangle.fill")
                .resizable ( )
                .scaledToFit ()
                .foregroundColor (accentColor)
                .frame (width: 10, height: 10) .rotationEffect (Angle (degrees: 180))
                .offset (y: -3)
                .padding (.bottom, 40)
        }
    }
}

struct EventMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        EventMapAnnotationView()
    }
}
