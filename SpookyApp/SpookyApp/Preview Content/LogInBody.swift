//
//  SignInBody.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct LogInBody: View {
    @State private var Email: String = ""
    @State private var Password: String = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack (spacing: 40){
                    
                    Text("LOGIN")
                        .font (.system(size:30))
                        .fontWeight(.bold)
                        .padding(.leading ,-170)
                        .padding(.top , 100)
                    
                    
                    
                    VStack(spacing: 20){
                        Text("Email")
                            .padding(.leading ,-170)
                        
                        TextField("Enter Your Email", text: $Email)
                            .padding(.leading)
                        
                        
                        Divider()
                            .padding(.leading)
                        
                        Text("Password")
                            .padding(.leading ,-170)
                        TextField(" *********", text: $Password)
                            .padding(.leading)
                        Divider()
                            .padding(.leading)
                        
                    } .padding()
                    
                    VStack (spacing: 50){
                      
                        NavigationLink(destination: ProfilePage()){
                            ZStack{
                                Rectangle()
                                    .fill(Color("Color1"))
                                    .frame(width: 300 ,height: 60)
                                    .cornerRadius(10)
                                Text("Log In")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20 ).bold())
                            }
                        }
                            
                        
                        Button {
                            print("Continue with Apple")
                        } label: {
                            Label("or Login with Apple", systemImage: "apple.logo")
                        }
                        
                        
                        
                        
                        .frame(width: 300, height: 55 ,alignment: .center)
                        .background(.red)
                        .cornerRadius(10)
                        .font(.system(size: 20 ).bold())
                        .foregroundColor(.white)
                        
                    }
                    .padding()
                    
                    Image("S")
                        .resizable()
                        .frame(width:400 ,height: 122)
                        .padding(.bottom)
                        .ignoresSafeArea()
                    
                }
                
                
            }
        }
    }
}

struct LogInBody_Previews: PreviewProvider {
    static var previews: some View {
        LogInBody()
    }
}
