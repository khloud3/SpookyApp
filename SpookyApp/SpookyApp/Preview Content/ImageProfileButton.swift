//
//  ImageProfileButton.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct ImageProfileButton: View {
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    @State private var name: String = ""
    @State private var birthdate = Date()

    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 20 )
                        .fill(Color("Color1"))
                        .ignoresSafeArea()
                        .frame(width: 400 ,height: 50)
                    Text(" My Profile")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .bold()
                    
                    
                }
                VStack {
                    ZStack(alignment: .top) {
                        Rectangle()
                            .foregroundColor (Color.white)
                            .edgesIgnoringSafeArea (.top)
                            .frame(height: 100)
                        
                        Button {
                            shouldShowImagePicker.toggle ()
                        } label: {
                            VStack{
                                if let image = self.image {
                                    Image (uiImage: image)
                                        .resizable ()
                                        .scaledToFill ()
                                        .frame (width: 143, height: 143)
                                        .cornerRadius(80)
                                }else {
                                    Image (systemName: "person.fill")
                                        .font (.system(size: 80))
                                        .padding ()
                                        .foregroundColor (Color (.label))
                                }
                            }
        
                            .overlay (RoundedRectangle (cornerRadius:80)
                                .stroke(Color.black, lineWidth: 3)
                            )
                        }
                    }
                    .padding(.top )
                }
                VStack(spacing:20) {
                    VStack(spacing: 5) {
                        
                        Text ("Chose your photo")
                            . font (.body)
                            .foregroundColor (.secondary)
                    }
                    
                    
                    Text ("Name")
                    
                        .padding(.leading ,-170)
                    TextField("Your Name", text: $name)
                        .padding(.leading )
                    
                    Divider()
                    Text ("Email")
                        .padding(.leading ,-170)
                    TextField("Enter your Email", text: $name)
                        .padding(.leading )
                    Divider()
                    
                    Form {
                        DatePicker ("Birthdate",selection: $birthdate ,in:
                                        ...Date(), displayedComponents:.date)
                      
                    }
                    .frame(width: 380 ,height: 100)
                    
                   
                }
                .padding()
                Spacer()
                   
            }
            
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        .fullScreenCover (isPresented: $shouldShowImagePicker, onDismiss: nil) {
            ImagePicker(image: $image)
                .ignoresSafeArea()
        }
    }
}
struct ImageProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageProfileButton()
    }
}
