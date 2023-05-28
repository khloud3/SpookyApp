//
//  EventPageView.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct EventPageView: View {
    @StateObject private var vm = EventViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                
                Event1View()
                    .environmentObject(vm)
            }
        }
        
    }
}

struct EventPageView_Previews: PreviewProvider {
    static var previews: some View {
        EventPageView()
    }
}
