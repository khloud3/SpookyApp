//
//  SpookyAppPage.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct SpookyOpenPage: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: LoginPage()){
                    OpenPageBody()
                }
            }
            .scaleEffect (size)
            .opacity (opacity)
            . onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
                
            }
            
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
                    self.isActive = true
                    
                }
            }
        }
    }
}

struct SpookyOpenPage_Previews: PreviewProvider {
    static var previews: some View {
        SpookyOpenPage()
    }
}
