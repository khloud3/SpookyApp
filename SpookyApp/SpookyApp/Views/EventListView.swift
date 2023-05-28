//
//  EventListView.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct EventListView: View {
    
    @EnvironmentObject private var vm : EventViewModel
    
    var body: some View {
        List{
            ForEach(vm.events) { event in
                Button{
                    vm.showNextEvent(event: event)
            } label:{
                listRowView(event: event)
            }
                    .padding(.vertical,4)
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
            .environmentObject(EventViewModel())
    }
}

extension EventListView {
    
    private func listRowView(event :Event ) -> some View {
        HStack{
            if let imageName = event.imageNames.first{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60 ,height: 60)
                    .cornerRadius(20)
            }
            
            VStack(alignment: .leading ){
                Text(event.title)
                    .font(.headline)
                Text(event.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity ,alignment: .leading)
            
        }
    }
}

