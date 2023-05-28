//
//  MessagePerson.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct MessagePerson: View {
    var body: some View {
        NavigationView{
            List(persons) { person in
         
                HStack{
                    VStack{
                        HStack{
                            Image(person.Personimage)
                                .resizable()
                                .frame(width: 90 ,height: 70)
                            
                            
                            Text ("\(person.PersonName)")
                                .font (.system(size: 18, weight: .bold))
                        }
                    }
                    .padding(.leading ,-5)
                    Spacer()
                    Image(systemName: "message")
                    
                    
                
            }
               
            }
            
            .listStyle(.plain)
        .navigationBarTitle("Guset List")
       
        }
    }
}

struct MessagePerson_Previews: PreviewProvider {
    static var previews: some View {
        MessagePerson()
    }
}
